function [integration_nodes, integration_network, integration_modules] = compute_integration(W)
    % COMPUTE_INTEGRATION calculates the integration of nodes and modules.
    %
    % Inputs:
    %   Ci_runs: a matrix of community assignments for each node across all layers and runs
    %            (dimensions: num_nodes * num_slices x num_runs)
    %   num_nodes: number of nodes in each slice
    %   num_slices: number of slices (time windows)
    %
    % Outputs:
    %   integration_nodes: integration of each node
    %   integration_modules: integration of each module

    num_slices = size(W, 2);
    num_nodes = size(W, 1);


    % Initialize integration metrics
    integration_nodes = zeros(num_nodes, 1);

    % Compute adjacency matrix A_ij (number of times nodes i and j are in the same module)
    A = zeros(num_nodes);
    for t = 1:num_slices
        for i = 1:num_nodes
            for j = 1:num_nodes
                if W(i, t) == W(j, t)
                    A(i, j) = A(i, j) + 1;
                end
            end
        end
    end

    % Normalize A by the total number of comparisons (num_slices * num_runs)
    A = A / (num_slices);

    % Calculate integration for each node
    for i = 1:num_nodes
        module_i = mode(W(i:num_nodes:end, :), 'all'); % Most frequent module for node i
        same_module_nodes = find(W(i:num_nodes:end, :) == module_i);
        other_module_nodes = find(W(i:num_nodes:end, :) ~= module_i);

        nM = length(same_module_nodes);
        NM = num_nodes;

        % Integration of node i
        if nM > 1
            integration_i = sum(A(i, other_module_nodes)) / (NM - nM);
        else
            integration_i = 0;
        end
        integration_nodes(i) = integration_i;
    end

    % Find unique modules
    unique_modules = unique(W(:));
    num_modules = length(unique_modules);

    % Initialize integration for each module
    integration_modules = zeros(num_modules, 1);

    % Calculate integration for each module
    for m = 1:num_modules
        module = unique_modules(m);
        module_nodes = find(any(W == module, 2)); % Nodes belonging to the module in any run/slice
        if isempty(module_nodes)
            integration_modules(m) = NaN;  % No nodes in this module
            continue;
        end

        module_integration = 0;
        for i = 1:length(module_nodes)
            node = module_nodes(i);
            other_module_nodes = setdiff(1:num_nodes, module_nodes);

            % Integration of node i within the module
            if ~isempty(other_module_nodes)
                module_integration = module_integration + sum(A(node, other_module_nodes)) / (num_nodes - length(module_nodes));
            end
        end

        integration_modules(m) = module_integration / length(module_nodes);
    end

    % Calculate mean integration of the entire network
    integration_network = mean(integration_nodes);
end
