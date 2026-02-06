function [clustering_coef,transitivity] = segregation_features(Graphs)
    num_slice = size(Graphs.beta,1);
    num_node = size(Graphs.beta,2);

    % Clustering coeficient
    clustering_coef = {};
    % clustering_coef.all = zeros(num_slice,1);
    % clustering_coef.delta = zeros(num_slice,1);
    % clustering_coef.theta = zeros(num_slice,1);
    % clustering_coef.alpha = zeros(num_slice,1);
    clustering_coef.beta = zeros(num_slice,1);
    clustering_coef.lowGamma = zeros(num_slice,1);
    for t = 1:num_slice
        % clustering_coef.all(t,:) = mean(clustering_coef_wu(squeeze(Graphs.all(t,:,:))));
        % clustering_coef.delta(t,:) = mean(clustering_coef_wu(squeeze(Graphs.delta(t,:,:))));
        % clustering_coef.theta(t,:) = mean(clustering_coef_wu(squeeze(Graphs.theta(t,:,:))));
        % clustering_coef.alpha(t,:) = mean(clustering_coef_wu(squeeze(Graphs.alpha(t,:,:))));
        clustering_coef.beta(t,:) = mean(clustering_coef_wu(squeeze(Graphs.beta(t,:,:))));
        clustering_coef.lowGamma(t,:) = mean(clustering_coef_wu(squeeze(Graphs.lowGamma(t,:,:))));
    end

    % Transitivity
    transitivity = {};
    % transitivity.all = zeros(num_slice,1);
    % transitivity.delta = zeros(num_slice,1);
    % transitivity.theta = zeros(num_slice,1);
    % transitivity.alpha = zeros(num_slice,1);
    transitivity.beta = zeros(num_slice,1);
    transitivity.lowGamma = zeros(num_slice,1);
    for t = 1:num_slice
        % transitivity.all(t,:) = transitivity_wu(squeeze(Graphs.all(t,:,:)));
        % transitivity.delta(t,:) = transitivity_wu(squeeze(Graphs.delta(t,:,:)));
        % transitivity.theta(t,:) = transitivity_wu(squeeze(Graphs.theta(t,:,:)));
        % transitivity.alpha(t,:) = transitivity_wu(squeeze(Graphs.alpha(t,:,:)));
        transitivity.beta(t,:) = transitivity_wu(squeeze(Graphs.beta(t,:,:)));
        transitivity.lowGamma(t,:) = transitivity_wu(squeeze(Graphs.lowGamma(t,:,:)));
    end

end