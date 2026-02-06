function [Ci_final, Q_final, Q_slices] = multislice_community_detection(W_layers, gamma, C, num_runs)
    % MULTISLICE_COMMUNITY_DETECTION performs multislice community detection
    % 
    % Inputs:
    %   W_layers: 3D matrix where W_layers(t,:,:) is the connectivity matrix at time slice t
    %   gamma: structural resolution parameter (usually set to 1)
    %   C: inter-layer coupling parameter (usually set to 1)
    %   num_runs: number of runs for consensus matrix computation
    %
    % Outputs:
    %   Ci_final: final community assignments for each node in each layer
    %   Q_final: final modularity score
    %   Q_slices: modularity score for each slice

    [num_slices, num_nodes, ~] = size(W_layers);

    % Create a multilayer adjacency matrix with inter-layer coupling
    A = zeros(num_nodes * num_slices, num_nodes * num_slices);
    for t = 1:num_slices
        A((t-1) * num_nodes + (1:num_nodes), (t-1) * num_nodes + (1:num_nodes)) = W_layers(t, :, :);
        if t < num_slices
            A((t-1) * num_nodes + (1:num_nodes), t * num_nodes + (1:num_nodes)) = C * eye(num_nodes);
            A(t * num_nodes + (1:num_nodes), (t-1) * num_nodes + (1:num_nodes)) = C * eye(num_nodes);
        end
    end

    % Run community detection multiple times
    Ci_runs = zeros(num_nodes * num_slices, num_runs);
    Q_runs = zeros(1, num_runs);
    for run = 1:num_runs
        [Ci_runs(:, run), Q_runs(run)] = community_louvain(A, gamma);
    end

    % Compute consensus matrix
    consensus_matrix = zeros(num_nodes * num_slices);
    for i = 1:num_nodes * num_slices
        for j = 1:num_nodes * num_slices
            consensus_matrix(i, j) = mean(Ci_runs(i, :) == Ci_runs(j, :));
        end
    end

    % Apply Louvain algorithm on the consensus matrix
    [Ci_final_flat, Q_final] = community_louvain(consensus_matrix, gamma);

    % Reshape Ci_final back to original format
    Ci_final = reshape(Ci_final_flat, [num_nodes, num_slices]);

    % Calculate Q index for each slice
    Q_slices = zeros(num_slices,1);
    for t = 1:num_slices
        [~, Q_slices(t)] = community_louvain(squeeze(W_layers(t, :, :)), gamma);
    end
end
