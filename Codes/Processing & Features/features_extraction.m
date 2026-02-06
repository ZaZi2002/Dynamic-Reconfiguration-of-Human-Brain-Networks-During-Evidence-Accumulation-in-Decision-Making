function features = features_extraction(Graphs,C)

features = {};

% Threshold
features.Graphs = thresholder(Graphs,C);

% Modularity
[features.reordered_graphs_final, features.reordered_graphs, features.reordered_sources_final, features.reordered_sources,...
    features.Q, features.mod_number_final, features.mod_number, features.affiliations_final, features.affiliations, features.Q_final, ...
    features.flexibility_network, features.flexibility_nodes, features.flexibility_modules, ...
    features.integration_network, features.integration_nodes, features.integration_modules] = modularity(features.Graphs);
disp('Modularity Done!')

% % Null model
% bin_swaps = 100;
% wei_freq = 0.1;
% [features.Null_graphs,~] = NullModel_maker(features.Graphs,bin_swaps,wei_freq);
% % features.Null_graphs = thresholder(Null_graphs,C);
% disp('Null Making Done!')
% 
% % Modularity of null models
% [features.Null_reordered_graphs_final, features.Null_reordered_graphs, features.Null_reordered_sources_final, features.Null_reordered_sources, features.Null_Q...
%     , features.Null_mod_number_final, features.Null_mod_number, features.Null_affiliations_final, features.Null_affiliations, features.Null_Q_final,...
%     features.Null_flexibility_network, features.Null_flexibility_nodes, features.Null_flexibility_modules, ...
%     features.Null_integration_network, features.Null_integration_nodes, features.Null_integration_modules] = modularity(features.Null_graphs);
% disp('Modularity Null Done!')

% Basic features
[features.degree_mean,features.degree,features.char_pl,features.num_triangles,features.efficiency,...
    features.radius,features.diameter] = basic_features(features.Graphs);
% [features.Null_degree_mean,features.Null_degree,features.Null_char_pl,features.Null_num_triangles,features.Null_efficiency...
    % ,features.Null_radius,features.Null_diameter] = basic_features(features.Null_graphs);

% Integration features
[features.global_effic,features.local_effic] = integration_features(features.Graphs);
% [features.Null_global_effic,features.Null_local_effic] = integration_features(features.Null_graphs);

% Segregation features
[features.clustering_coef,features.transitivity] = segregation_features(features.Graphs);
% [features.Null_clustering_coef,features.Null_transitivity] = segregation_features(features.Null_graphs);

% Centrality features
[features.closeness,features.betweenness] = centrality_features(features.Graphs);
% [features.Null_closeness,features.Null_betweenness] = centrality_features(features.Null_graphs);

% % Small-worldness
% num_slice = size(features.Graphs.all,1);
% num_node = size(features.Graphs.all,2);
% 
% features.small_world = {};
% features.small_world.all = zeros(num_slice,1);
% features.small_world.delta = zeros(num_slice,1);
% features.small_world.theta = zeros(num_slice,1);
% features.small_world.alpha = zeros(num_slice,1);
% features.small_world.beta = zeros(num_slice,1);
% features.small_world.lowGamma = zeros(num_slice,1);
% for t = 1:num_slice
%     features.small_world.all(t,:) = (features.clustering_coef.all(t) / features.Null_clustering_coef.all(t)) / (features.char_pl.all(t) / features.Null_char_pl.all(t));
%     features.small_world.delta(t,:) = (features.clustering_coef.delta(t) / features.Null_clustering_coef.delta(t)) / (features.char_pl.delta(t) / features.Null_char_pl.delta(t));
%     features.small_world.theta(t,:) = (features.clustering_coef.theta(t) / features.Null_clustering_coef.theta(t)) / (features.char_pl.theta(t) / features.Null_char_pl.theta(t));
%     features.small_world.alpha(t,:) = (features.clustering_coef.alpha(t) / features.Null_clustering_coef.alpha(t)) / (features.char_pl.alpha(t) / features.Null_char_pl.alpha(t));
%     features.small_world.beta(t,:) = (features.clustering_coef.beta(t) / features.Null_clustering_coef.beta(t)) / (features.char_pl.beta(t) / features.Null_char_pl.beta(t));
%     features.small_world.lowGamma(t,:) = (features.clustering_coef.lowGamma(t) / features.Null_clustering_coef.lowGamma(t)) / (features.char_pl.lowGamma(t) / features.Null_char_pl.lowGamma(t));
% end

end