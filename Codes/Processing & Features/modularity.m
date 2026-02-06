function [reordered_graphs_final, reordered_graphs, reordered_sources_final, reordered_sources, Q, mod_number_final, mod_number, affiliations_final, affiliations, Q_final, flexibility_network, flexibility_node, flexibility_module, integration_network, integration_nodes, integration_modules] = modularity(Graphs)
    num_slice = size(Graphs.beta,1);
    num_node = size(Graphs.beta,2);
    
    % Number of modules
    mod_number = {};
    % mod_number.all = zeros(num_slice,1);
    % mod_number.delta = zeros(num_slice,1);
    % mod_number.theta = zeros(num_slice,1);
    % mod_number.alpha = zeros(num_slice,1);
    mod_number.beta = zeros(num_slice,1);
    mod_number.lowGamma = zeros(num_slice,1);

    % Number of modules final
    mod_number_final = {};
    % mod_number_final.all = 0;
    % mod_number_final.delta = 0;
    % mod_number_final.theta = 0;
    % mod_number_final.alpha = 0;
    mod_number_final.beta = 0;
    mod_number_final.lowGamma = 0;
    
    % Performing modulation based on louvain algorithm
    num = 200;
    % [static_graph.all, affiliations_final.all, affiliations.all, Q_final.all, Q.all, flexibility_network.all, flexibility_node.all, flexibility_module.all, integration_nodes.all, integration_network.all, integration_modules.all] = multislice_community_detection_2(Graphs.all,1,1,num);
    % [static_graph.delta, affiliations_final.delta, affiliations.delta, Q_final.delta, Q.delta, flexibility_network.delta, flexibility_node.delta, flexibility_module.delta, integration_nodes.delta, integration_network.delta, integration_modules.delta] = multislice_community_detection_2(Graphs.delta,1,1,num);
    % [static_graph.theta, affiliations_final.theta, affiliations.theta, Q_final.theta, Q.theta, flexibility_network.theta, flexibility_node.theta, flexibility_module.theta, integration_nodes.theta, integration_network.theta, integration_modules.theta] = multislice_community_detection_2(Graphs.theta,1,1,num);
    % [static_graph.alpha, affiliations_final.alpha, affiliations.alpha, Q_final.alpha, Q.alpha, flexibility_network.alpha, flexibility_node.alpha, flexibility_module.alpha, integration_nodes.alpha, integration_network.alpha, integration_modules.alpha] = multislice_community_detection_2(Graphs.alpha,1,1,num);
    [static_graph.beta, affiliations_final.beta, affiliations.beta, Q_final.beta, Q.beta, flexibility_network.beta, flexibility_node.beta, flexibility_module.beta, integration_nodes.beta, integration_network.beta, integration_modules.beta] = multislice_community_detection_2(Graphs.beta,1,1,num);
    [static_graph.lowGamma, affiliations_final.lowGamma, affiliations.lowGamma, Q_final.lowGamma, Q.lowGamma, flexibility_network.lowGamma, flexibility_node.lowGamma, flexibility_module.lowGamma, integration_nodes.lowGamma, integration_network.lowGamma, integration_modules.lowGamma] = multislice_community_detection_2(Graphs.lowGamma,1,1,num);
    
    
    % Reordering graphs
    reordered_graphs = {};
    % reordered_graphs.all = zeros(num_slice,num_node,num_node);
    % reordered_graphs.delta = zeros(num_slice,num_node,num_node);
    % reordered_graphs.theta = zeros(num_slice,num_node,num_node);
    % reordered_graphs.alpha = zeros(num_slice,num_node,num_node);
    reordered_graphs.beta = zeros(num_slice,num_node,num_node);
    reordered_graphs.lowGamma = zeros(num_slice,num_node,num_node);

    % Reordering graphs final
    reordered_graphs_final = {};
    % reordered_graphs_final.all = zeros(num_node,num_node);
    % reordered_graphs_final.delta = zeros(num_node,num_node);
    % reordered_graphs_final.theta = zeros(num_node,num_node);
    % reordered_graphs_final.alpha = zeros(num_node,num_node);
    reordered_graphs_final.beta = zeros(num_node,num_node);
    reordered_graphs_final.lowGamma = zeros(num_node,num_node);
    
    % Reordering sources
    reordered_sources = {};
    % reordered_sources.all = zeros(num_node,num_slice);
    % reordered_sources.delta = zeros(num_node,num_slice);
    % reordered_sources.theta = zeros(num_node,num_slice);
    % reordered_sources.alpha = zeros(num_node,num_slice);
    reordered_sources.beta = zeros(num_node,num_slice);
    reordered_sources.lowGamma = zeros(num_node,num_slice);

    % Reordering sources final
    reordered_sources_final = {};
    % reordered_sources_final.all = zeros(num_node);
    % reordered_sources_final.delta = zeros(num_node);
    % reordered_sources_final.theta = zeros(num_node);
    % reordered_sources_final.alpha = zeros(num_node);
    reordered_sources_final.beta = zeros(num_node);
    reordered_sources_final.lowGamma = zeros(num_node);
    
    for t = 1:num_slice
        % Finding number of modules
        % mod_number.all(t) = length(unique(affiliations.all(:,t)));
        % mod_number.delta(t) = length(unique(affiliations.delta(:,t)));
        % mod_number.theta(t) = length(unique(affiliations.theta(:,t)));
        % mod_number.alpha(t) = length(unique(affiliations.alpha(:,t)));
        mod_number.beta(t) = length(unique(affiliations.beta(:,t)));
        mod_number.lowGamma(t) = length(unique(affiliations.lowGamma(:,t)));

        % if (mod_number.all(t) > 1)
        %     [reordered_sources.all(:,t), reordered_graphs.all(t,:,:)] = reorder_mod(squeeze(Graphs.all(t,:,:)),affiliations.all(:,t));
        % end
        % if (mod_number.delta(t) > 1)
        %     [reordered_sources.delta(:,t), reordered_graphs.delta(t,:,:)] = reorder_mod(squeeze(Graphs.delta(t,:,:)),affiliations.delta(:,t));
        % end
        % if (mod_number.theta(t) > 1)
        %     [reordered_sources.theta(:,t), reordered_graphs.theta(t,:,:)] = reorder_mod(squeeze(Graphs.theta(t,:,:)),affiliations.theta(:,t));
        % end
        % if (mod_number.alpha(t) > 1)
        %     [reordered_sources.alpha(:,t), reordered_graphs.alpha(t,:,:)] = reorder_mod(squeeze(Graphs.alpha(t,:,:)),affiliations.alpha(:,t));
        % end
        if (mod_number.beta(t) > 1)
            [reordered_sources.beta(:,t), reordered_graphs.beta(t,:,:)] = reorder_mod(squeeze(Graphs.beta(t,:,:)),affiliations.beta(:,t));
        end
        if (mod_number.lowGamma(t) > 1)
            [reordered_sources.lowGamma(:,t), reordered_graphs.lowGamma(t,:,:)] = reorder_mod(squeeze(Graphs.lowGamma(t,:,:)),affiliations.lowGamma(:,t));
        end
    end


    % Finding number of modules
    % mod_number_final.all = length(unique(affiliations_final.all));
    % mod_number_final.delta = length(unique(affiliations_final.delta));
    % mod_number_final.theta = length(unique(affiliations_final.theta));
    % mod_number_final.alpha = length(unique(affiliations_final.alpha));
    mod_number_final.beta = length(unique(affiliations_final.beta));
    mod_number_final.lowGamma = length(unique(affiliations_final.lowGamma));

    % if (mod_number_final.all > 1)
    %     [reordered_sources_final.all, reordered_graphs_final.all] = reorder_mod(static_graph.all,affiliations_final.all);
    % end
    % if (mod_number_final.delta > 1)
    %     [reordered_sources_final.delta, reordered_graphs_final.delta] = reorder_mod(static_graph.delta,affiliations_final.delta);
    % end
    % if (mod_number_final.theta > 1)
    %     [reordered_sources_final.theta, reordered_graphs_final.theta] = reorder_mod(static_graph.theta,affiliations_final.theta);
    % end
    % if (mod_number_final.alpha > 1)
    %     [reordered_sources_final.alpha, reordered_graphs_final.alpha] = reorder_mod(static_graph.alpha,affiliations_final.alpha);
    % end
    if (mod_number_final.beta > 1)
        [reordered_sources_final.beta, reordered_graphs_final.beta] = reorder_mod(static_graph.beta,affiliations_final.beta);
    end
    if (mod_number_final.lowGamma > 1)
        [reordered_sources_final.lowGamma, reordered_graphs_final.lowGamma] = reorder_mod(static_graph.lowGamma,affiliations_final.lowGamma);
    end

end