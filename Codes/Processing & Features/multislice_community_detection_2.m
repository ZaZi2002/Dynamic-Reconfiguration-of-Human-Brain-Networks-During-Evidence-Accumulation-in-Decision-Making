% function [T_cons, Ci_final, Ci_run, Q_final, Q_slices, flexibility_network, flexibility_node, flexibility_module, integration_nodes, integration_network, integration_modules] = multislice_community_detection_2(W_layers, gamma, C, num_runs)
%     % MULTISLICE_COMMUNITY_DETECTION performs multislice community detection
%     % using a multilayer approach with inter-layer coupling
%     % 
%     % Inputs:
%     %   W_layers: 3D matrix where W_layers(t,:,:) is the connectivity matrix at time slice t
%     %   gamma: structural resolution parameter (usually set to 1)
%     %   C: inter-layer coupling parameter (usually set to 1)
%     %   num_runs: number of runs for consensus matrix computation
%     %
%     % Outputs:
%     %   Ci_final: final community assignments for each node in each layer
%     %   Q_final: final modularity score
%     %   Q_slices: modularity score for each time slice
%     %   flexibility_network: overall flexibility of the network
%     %   flexibility_node: flexibility of each node across time slices
%     %   flexibility_module: flexibility of each module across time slices
%     %   integration_nodes: integration values for each node
%     %   integration_network: overall integration of the network
%     %   integration_modules: integration between modules
% 
%     [num_slices, num_nodes, ~] = size(W_layers);
% 
%     % Initialize matrices
%     Ci_runs = zeros(num_nodes, num_slices, num_runs);
%     Q_slices_runs = zeros(num_slices, num_runs);
% 
%     % Repeat modularity optimization num_runs times
%     for run = 1:num_runs
%         % % Create the multilayer adjacency matrix with inter-layer coupling
%         % B = spalloc(num_nodes * num_slices, num_nodes * num_slices, num_nodes * num_nodes * num_slices + num_nodes * num_slices);
%         % 
%         % % Fill in the intra-layer connections
%         % for t = 1:num_slices
%         %     ind = (t-1) * num_nodes + (1:num_nodes);
%         %     B(ind, ind) = squeeze(W_layers(t, :, :));
%         % end
%         % 
%         % % Fill in the inter-layer connections (coupling)
%         % for t = 1:num_slices-1
%         %     ind1 = (t-1) * num_nodes + (1:num_nodes);
%         %     ind2 = t * num_nodes + (1:num_nodes);
%         %     B(ind1, ind2) = C * speye(num_nodes);  % Identity matrix times coupling strength
%         %     B(ind2, ind1) = C * speye(num_nodes);  % Ensure symmetry
%         % end
% 
%         % Create a multilayer adjacency matrix with inter-layer coupling
%         A = zeros(num_nodes * num_slices, num_nodes * num_slices);
%         for t = 1:num_slices
%             A((t-1) * num_nodes + (1:num_nodes), (t-1) * num_nodes + (1:num_nodes)) = W_layers(t, :, :);
%             if t < num_slices
%                 A((t-1) * num_nodes + (1:num_nodes), t * num_nodes + (1:num_nodes)) = C * eye(num_nodes);
%                 A(t * num_nodes + (1:num_nodes), (t-1) * num_nodes + (1:num_nodes)) = C * eye(num_nodes);
%             end
%         end
% 
%         % Apply the GenLouvain algorithm to the multilayer network
%         [Ci_multilayer, Q_multilayer] = community_louvain(A,1);
% 
%         % Reshape the result back into the original format
%         Ci_run = reshape(Ci_multilayer, num_nodes, num_slices);
%         Ci_runs(:, :, run) = Ci_run;
% 
%         % Calculate the modularity for each slice
%         for t = 1:num_slices
%             %Q_slices_runs(t, run) = sum(sum(W_layers(t, :, :) .* (Ci_run(:, t) == Ci_run(:, t)')));
%         end
%     end
% 
%     Q_slices = mean(Q_slices_runs, 2);
% 
%     % Calculate modular allegiance matrices for each run
%     T_runs = zeros(num_nodes, num_nodes, num_runs);
%     for run = 1:num_runs
%         T_runs(:, :, run) = compute_modular_allegiance(Ci_runs(:,:,run));
%     end
% 
%     % Create the consensus matrix by summing allegiance matrices
%     T_cons = mean(T_runs, 3);
% 
%     % Remove noise by comparing with random null model
%     T_cons = remove_noise(T_cons, num_nodes, num_runs);
% 
%     % Optimize the consensus matrix to find the final partition
%     [Ci_final,Q_final] = optimize_consensus_matrix(T_cons, gamma, 100);
% 
%     % Calculate the overall and node flexibility of the network
%     if num_slices > 1
%         [flexibility_network, flexibility_node] = compute_overall_flexibility(Ci_runs, num_nodes, num_slices, num_runs);
%     else
%         flexibility_node = zeros(num_nodes,1);
%         flexibility_network = 0;
%     end
% 
%     % Calculate flexibility of each module across time slices
%     flexibility_module = calculate_module_flexibility(Ci_runs, Ci_final, num_slices, num_runs);
% 
%     % Calculate integration metrics
%     [integration_nodes, integration_network, integration_modules] = calculate_integration_metrics(T_cons, Ci_final(:, 1));  % Using the consensus partition for the first time slice
% 
% end

function [T_cons, Ci_final, Ci_run, Q_final, Q_slices, flexibility_network, flexibility_node, flexibility_module, integration_nodes, integration_network, integration_modules] = multislice_community_detection_2(W_layers, gamma, C, num_runs)
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
    %   Q_slices: modularity score for each time slice
    %   flexibility_network: overall flexibility of the network
    %   flexibility_node: flexibility of each node across time slices
    %   flexibility_module: flexibility of each module across time slices
    %   integration_nodes: integration values for each node
    %   integration_network: overall integration of the network
    %   integration_modules: integration between modules

    [num_slices, num_nodes, ~] = size(W_layers);

    % Initialize matrices
    Ci_runs = zeros(num_nodes, num_slices, num_runs);
    Q_slices_runs = zeros(num_slices, num_runs);

    % Repeat modularity optimization num_runs times
    for run = 1:num_runs
        % Create a multilayer adjacency tensor with inter-layer coupling
        A = zeros(num_nodes, num_nodes, num_slices);
        for t = 1:num_slices
            A(:,:,t) = squeeze(W_layers(t, :, :));
        end

        % Apply Louvain-like heuristic algorithm for community detection
        Ci_run = zeros(num_nodes, num_slices);
        for t = 1:num_slices
            [Ci_run(:, t), Q_slices_runs(t, run)] = community_louvain(A(:,:,t), gamma);
        end

        Ci_runs(:, :, run) = Ci_run;
        Q_slices = mean(Q_slices_runs,2);
    end

    % Calculate modular allegiance matrices for each run
    T_runs = zeros(num_nodes, num_nodes, num_runs);
    for run = 1:num_runs
        T_runs(:,:,run) = compute_modular_allegiance(Ci_runs(:,:,run));
    end

    % Create the consensus matrix by summing allegiance matrices
    T_cons = mean(T_runs, 3);

    % Remove noise by comparing with random null model
    T_cons = remove_noise(Ci_runs, T_cons, num_nodes, num_runs, num_slices);

    % Optimize the consensus matrix to find the final partition
    [Ci_final,Q_final] = optimize_consensus_matrix(T_cons, gamma, 1);

    % Align community labels across consecutive time windows
    Ci_runs(:,1,1) = align_communities_static(Ci_runs(:,1,1),Ci_final);

    if num_slices > 1
        Ci_runs = align_communities_across_time(Ci_runs);
    end

    % Calculate the overall and node flexibility of the network
    if num_slices > 1
        [flexibility_network, flexibility_node] = compute_overall_flexibility(Ci_runs, num_nodes, num_slices, num_runs);
    else
        flexibility_node = zeros(num_nodes,1);
        flexibility_network = 0;
    end

    % Calculate flexibility of each module across time slices
    flexibility_module = calculate_module_flexibility(Ci_runs, Ci_final, num_slices, num_runs);

    % Calculate integration metrics
    [integration_nodes, integration_network, integration_modules] = calculate_integration_metrics(T_cons, Ci_final(:, 1));  % Using the consensus partition for the first time slice

end

% function [Ci_aligned,counter] = align_communities_across_time(Ci,counter)
%     % Align community labels across consecutive time windows
% 
%     num_nodes = size(Ci, 1);
%     num_slices = size(Ci, 2);
%     Ci_aligned = Ci;
% 
%     for t = 1:num_slices-1
%         Ci1 = Ci_aligned(:, t);
%         Ci2 = Ci_aligned(:, t+1);
% 
%         % Find unique communities in the two time slices
%         unique_Ci1 = unique(Ci1);
%         unique_Ci2 = unique(Ci2);
% 
%         % Initialize cost matrix for matching
%         cost_matrix = zeros(length(unique_Ci1), length(unique_Ci2));
% 
%         % Fill cost matrix based on overlap between communities
%         for i = 1:length(unique_Ci1)
%             for j = 1:length(unique_Ci2)
%                 overlap = sum(Ci1 == unique_Ci1(i) & Ci2 == unique_Ci2(j));
%                 % Use a similarity measure such as negative Jaccard index for minimization
%                 cost_matrix(i, j) = -overlap / (sum(Ci1 == unique_Ci1(i)) + sum(Ci2 == unique_Ci2(j)) - overlap);
%             end
%         end
% 
%         % Dynamically determine a large finite value for unmatched cost
%         large_value = 10 * max(abs(cost_matrix(:)));  % Scaling with the data
% 
%         % Perform optimal matching
%         [row_ind, col_ind] = matchpairs(cost_matrix, large_value);
% 
%         % Check for empty matches
%         if isempty(row_ind) || isempty(col_ind)
%             % If no valid match is found, skip alignment for this step
%             warning('No valid match found between time slices %d and %d. Skipping alignment for these slices.', t, t+1);
%             counter = counter + 1;
%             continue;
%         end
% 
%         % Reassign community labels in time t+1 based on matching
%         Ci2_new = Ci2;
%         disp(length(row_ind))
%         disp(length(col_ind))
%         for i = 1:length(row_ind)
%             if row_ind(i) > 0 && col_ind(i) > 0
%                 Ci2_new(Ci2 == unique_Ci2(col_ind(i))) = unique_Ci1(row_ind(i));
%             end
%         end
% 
%         Ci_aligned(:, t+1) = Ci2_new;
%     end
% end

function Ci_aligned = align_communities_across_time(Ci)
    % Align community labels across consecutive time windows using a max-overlap strategy with threshold

    num_nodes = size(Ci,1);
    num_slices = size(Ci,2);
    num_runs = size(Ci,3);
    Ci_aligned = Ci;
    
    change = 0;
    counter = 0;
    for run = 1:num_runs
        for t = 1:num_slices
            if (t == num_slices)
                if (run ~= num_runs)
                    Ci1 = Ci_aligned(:,1,run);
                    Ci2 = Ci_aligned(:,1,run+1);
                end
            else
                Ci1 = Ci_aligned(:,t,run);
                Ci2 = Ci_aligned(:,t+1,run);
            end
    
            % Find unique communities in the two time slices
            unique_Ci1 = unique(Ci1);
            unique_Ci2 = unique(Ci2);
    
            % Reassign community labels in time t+1 based on maximum overlap with time t
            Ci2_new = Ci2;  % Initialize the new labels array
            for i = 1:length(unique_Ci2)
                max_overlap = 0;
                best_match = unique_Ci2(i); % Start with the current label in case of no match
                for j = 1:length(unique_Ci1)
                    overlap = sum(Ci1 == unique_Ci1(j) & Ci2 == unique_Ci2(i));
    
                    if overlap > max_overlap
                        max_overlap = overlap;
                        best_match = unique_Ci1(j);
                    end
                end
    
                % Assign the best matching label from time t to the current community in time t+1
                % Only reassign if the threshold condition is met and no conflict arises
                if max_overlap >= 0.5 * sum(Ci2 == unique_Ci2(i))
                    Ci2_new(Ci2 == best_match) = 111;
                    Ci2_new(Ci2 == unique_Ci2(i)) = best_match;
                    Ci2_new(Ci2 == 111) = unique_Ci2(i);

                    a = unique_Ci2(i);
                    unique_Ci2(unique_Ci2 == best_match) = a;
                    unique_Ci2(i) = best_match;

                    change = change + 1;
                end
                counter = counter + 1;
            end
            if (t == num_slices)
                if (run ~= num_runs)
                    Ci_aligned(:, 1, run+1) = Ci2_new;
                end
            else
                Ci_aligned(:, t+1, run) = Ci2_new;
            end
        end
    end
    %disp(change / counter);
end

function Ci_aligned = align_communities_static(Ci, Ci_final)
    % Align community labels across consecutive time windows using a max-overlap strategy with threshold

    num_nodes = size(Ci,1);
    num_slices = size(Ci,2);
    num_runs = size(Ci,3);
    Ci_aligned = Ci;
    
    change = 0;
    counter = 0;
    Ci1 = Ci_aligned;
    Ci2 = Ci_final;

    % Find unique communities in the two time slices
    unique_Ci1 = unique(Ci1);
    unique_Ci2 = unique(Ci2);

    % Reassign community labels in time t+1 based on maximum overlap with time t
    Ci2_new = Ci2;  % Initialize the new labels array
    for i = 1:length(unique_Ci2)
        max_overlap = 0;
        best_match = unique_Ci2(i); % Start with the current label in case of no match
        for j = 1:length(unique_Ci1)
            overlap = sum(Ci1 == unique_Ci1(j) & Ci2 == unique_Ci2(i));

            if overlap > max_overlap
                max_overlap = overlap;
                best_match = unique_Ci1(j);
            end
        end

        % Assign the best matching label from time t to the current community in time t+1
        % Only reassign if the threshold condition is met and no conflict arises
        if max_overlap >= 0.5 * sum(Ci2 == unique_Ci2(i))
            Ci2_new(Ci2 == best_match) = 111;
            Ci2_new(Ci2 == unique_Ci2(i)) = best_match;
            Ci2_new(Ci2 == 111) = unique_Ci2(i);

            a = unique_Ci2(i);
            unique_Ci2(unique_Ci2 == best_match) = a;
            unique_Ci2(i) = best_match;

            change = change + 1;
        end
        counter = counter + 1;
    end
        Ci_aligned(:, 1, 1) = Ci2_new;
    %disp(change / counter);
end

function T = compute_modular_allegiance(Ci)
    % Computes the modular allegiance matrix
    num_nodes = size(Ci, 1);
    num_slices = size(Ci, 2);
    T = zeros(num_nodes, num_nodes);

    for t = 1:num_slices
        for i = 1:num_nodes
            for j = i+1:num_nodes
                if Ci(i, t) == Ci(j, t)
                    T(i, j) = T(i, j) + 1;
                    T(j, i) = T(i, j);
                end
            end
        end
    end
    T = T / num_slices;  % Normalize by the number of slices
end

function T_cons = remove_noise(Ci_runs, T_cons, num_nodes, num_runs, num_slices)
    null_runs = zeros(num_nodes,num_nodes,num_runs);
    for perm = 1:num_runs
        % Randomly assign nodes to communities
        for t = 1:num_slices
            random_partition(t,:) = randi(max(Ci_runs(:,t,perm)), num_nodes, 1);
        end
        % Update the null model matrix
        null_model_matrix = zeros(num_nodes,num_nodes);
        for t = 1:num_slices
            for i = 1:num_nodes
                for j = i+1:num_nodes
                    if random_partition(t,i) == random_partition(t,j)
                        null_model_matrix(i, j) = null_model_matrix(i, j) + 1;
                        null_model_matrix(j, i) = null_model_matrix(i, j);
                    end
                end
            end
        end
        null_model_matrix = null_model_matrix / num_slices;
        null_runs(:,:,perm) = null_model_matrix;
    end
    null_cons = mean(null_runs, 3);
    thresh = max(null_cons(:));
    %disp(thresh)

    % Removes noise from the consensus matrix by comparing with a random null model
    for i = 1:num_nodes
        for j = 1:num_nodes
            if T_cons(i,j) < thresh
                T_cons(i,j) = 0;  % Set to 0 if less than maximum of null model
            end
        end
    end
end

function [Ci_final,Q_final] = optimize_consensus_matrix(T_cons, gamma, num_iterations)
    % Optimize the consensus matrix to find the final partition using the Louvain algorithm
    for iter = 1:num_iterations
        [Ci_final, Q_final] = community_louvain(T_cons, gamma);
    end
end

function [flexibility_network, node_flexibility] = compute_overall_flexibility(Ci_runs, num_nodes, num_slices, num_runs)
    % Compute the overall flexibility of the network and each node
    total_changes = 0;
    node_flexibility = zeros(num_nodes, 1);
    for i = 1:num_nodes
        changes = 0;
        for run = 1:num_runs
            for j = 1:num_slices-1
                if Ci_runs(i, j, run) ~= Ci_runs(i, j+1, run)
                    total_changes = total_changes + 1;
                    changes = changes + 1;
                end
            end
        end
        node_flexibility(i) = changes / ((num_slices - 1) * num_runs);
    end

    % Calculate overall flexibility as the total changes divided by the number
    % of possible changes (nodes * slices - 1) * runs
    flexibility_network = total_changes / ((num_slices - 1) * num_nodes * num_runs);
end

function module_flexibility = calculate_module_flexibility(Ci_runs, Ci_final, num_slices, num_runs)
    % Calculate the flexibility of each module
    unique_modules = unique(Ci_final(:));
    module_flexibility = zeros(length(unique_modules), 1);

    for m = 1:length(unique_modules)
        module_nodes = find(Ci_final(:,1) == unique_modules(m));
        module_changes = 0;

        if num_slices > 1
            for run = 1:num_runs
                for t = 1:num_slices-1
                    for i = 1:length(module_nodes)
                        if Ci_runs(module_nodes(i), t, run) ~= Ci_runs(module_nodes(i), t+1, run)
                            module_changes = module_changes + 1;
                            break;  % Count only one change per time slice per module
                        end
                    end
                end
            end
            module_flexibility(m) = module_changes / ((num_slices - 1) * num_runs);
        end
    end
end

function [integration_nodes, integration_network, integration_modules] = calculate_integration_metrics(T, Ci_final)
    % Calculate integration metrics: node integration, network integration, and module integration
    unique_modules = unique(Ci_final);
    num_modules = length(unique_modules);

    integration_nodes = zeros(length(Ci_final), 1);
    integration_modules = zeros(num_modules, num_modules);

    for i = 1:length(Ci_final)
        node_module = Ci_final(i);
        other_modules = setdiff(unique_modules, node_module);

        integration_sum = 0;
        for j = 1:length(other_modules)
            other_module_nodes = find(Ci_final == other_modules(j));
            integration_sum = integration_sum + sum(T(i, other_module_nodes));
        end
        integration_nodes(i) = integration_sum / length(other_modules);
    end

    integration_sum = 0;
    for k = 1:num_modules
        for l = 1:num_modules
            if k ~= l
                nodes_in_k = find(Ci_final == unique_modules(k));
                nodes_in_l = find(Ci_final == unique_modules(l));
                I_kl = sum(sum(T(nodes_in_k, nodes_in_l))) / (length(nodes_in_k) * length(nodes_in_l));
                integration_modules(k, l) = I_kl;
                integration_sum = integration_sum + I_kl;
            end
        end
    end
    integration_modules = sum(integration_modules,1);

    % Network integration is the average integration between different modules
    integration_network = integration_sum / (num_modules * (num_modules - 1));
end


% function [Ci, Q] = community_louvain_2(W, gamma)
%     % COMMUNITY_LOUVAIN performs community detection using Louvain algorithm
%     % 
%     % Inputs:
%     %   W: Adjacency matrix
%     %   gamma: structural resolution parameter
%     %
%     % Outputs:
%     %   Ci: Community assignments
%     %   Q: Modularity score
% 
%     n = length(W);
%     m = sum(W(:));
% 
%     B = W - gamma * (sum(W, 2) * sum(W, 1)) / m;
% 
%     % Initial community assignments
%     Ci = 1:n;
%     Q0 = -Inf;
%     Q = 0;
% 
%     while (Q - Q0) > 1e-10
%         Q0 = Q;
%         for u = randperm(n)
%             delta_Q = sum(B(:,Ci == Ci(u)), 2) - B(u,u);
%             delta_Q(Ci(u)) = 0;
% 
%             [max_dQ, max_idx] = max(delta_Q);
%             if max_dQ > 1e-10
%                 Ci(u) = max_idx;
%             end
%         end
% 
%         % Update community labels
%         [~,~,Ci] = unique(Ci);
%         B = B * (Ci' == Ci);
%         Q = trace(B);
%     end
% end
