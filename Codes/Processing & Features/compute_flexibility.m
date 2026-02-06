function [flexibility_nodes, flexibility_network, flexibility_modules] = compute_flexibility(W)
    % COMPUTE_FLEXIBILITY measures the flexibility of nodes, modules, and the entire network
    %
    % Inputs:
    %   Ci_final: a matrix of community assignments for each node across all layers
    %             (dimensions: num_nodes x num_slices)
    %
    % Outputs:
    %   flexibility_nodes: flexibility of each node
    %   flexibility_network: mean flexibility of the entire network
    %   flexibility_modules: flexibility of each module

    [num_nodes, num_slices] = size(W);

    % Initialize flexibility for each node
    flexibility_nodes = zeros(num_nodes, 1);

    % Calculate flexibility for each node
    for i = 1:num_nodes
        changes = 0;
        for t = 1:num_slices-1
            if W(i, t) ~= W(i, t+1)
                changes = changes + 1;
            end
        end
        flexibility_nodes(i) = changes / (num_slices - 1);
    end

    % Calculate mean flexibility of the entire network
    flexibility_network = mean(flexibility_nodes);

    % Find unique modules
    unique_modules = unique(W(:));
    num_modules = length(unique_modules);

    % Initialize flexibility for each module
    flexibility_modules = zeros(num_modules, 1);

    % Calculate flexibility for each module
    for m = 1:num_modules
        module = unique_modules(m);
        module_nodes = find(any(W == module, 2));  % Find nodes belonging to the module in any slice
        if isempty(module_nodes)
            flexibility_modules(m) = NaN;  % No nodes in this module
            continue;
        end

        module_flexibility = 0;
        for i = 1:length(module_nodes)
            node = module_nodes(i);
            module_changes = 0;
            for t = 1:num_slices-1
                if W(node, t) ~= W(node, t+1)
                    module_changes = module_changes + 1;
                end
            end
            module_flexibility = module_flexibility + (module_changes / (num_slices - 1));
        end

        flexibility_modules(m) = module_flexibility / length(module_nodes);
    end
end
