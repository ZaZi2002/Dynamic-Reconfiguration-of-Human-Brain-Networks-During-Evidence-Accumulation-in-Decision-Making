function [closeness,betweenness] = centrality_features(Graphs)
    num_slice = size(Graphs.beta,1);
    num_node = size(Graphs.beta,2);

    % Closeness
    closeness = {};
    % closeness.all = zeros(num_slice,1);
    % closeness.delta = zeros(num_slice,1);
    % closeness.theta = zeros(num_slice,1);
    % closeness.alpha = zeros(num_slice,1);
    closeness.beta = zeros(num_slice,1);
    closeness.lowGamma = zeros(num_slice,1);
    for t = 1:num_slice
        % CC = 1 ./ sum(distance_wei(squeeze(Graphs.all(t,:,:))), 2);
        % CC(isinf(CC)) = 0;
        % closeness.all(t,:) = mean(CC * (num_node - 1));
        % CC = 1 ./ sum(distance_wei(squeeze(Graphs.delta(t,:,:))), 2);
        % CC(isinf(CC)) = 0;
        % closeness.delta(t,:) = mean(CC * (num_node - 1));
        % CC = 1 ./ sum(distance_wei(squeeze(Graphs.theta(t,:,:))), 2);
        % CC(isinf(CC)) = 0;
        % closeness.theta(t,:) = mean(CC * (num_node - 1));
        % CC = 1 ./ sum(distance_wei(squeeze(Graphs.alpha(t,:,:))), 2);
        % CC(isinf(CC)) = 0;
        % closeness.alpha(t,:) = mean(CC * (num_node - 1));
        CC = 1 ./ sum(distance_wei(squeeze(Graphs.beta(t,:,:))), 2);
        CC(isinf(CC)) = 0;
        closeness.beta(t,:) = mean(CC * (num_node - 1));
        CC = 1 ./ sum(distance_wei(squeeze(Graphs.lowGamma(t,:,:))), 2);
        CC(isinf(CC)) = 0;
        closeness.lowGamma(t,:) = mean(CC * (num_node - 1));
    end

    % Betweennes
    betweenness = {};
    % betweenness.all = zeros(num_slice,1);
    % betweenness.delta = zeros(num_slice,1);
    % betweenness.theta = zeros(num_slice,1);
    % betweenness.alpha = zeros(num_slice,1);
    betweenness.beta = zeros(num_slice,1);
    betweenness.lowGamma = zeros(num_slice,1);
    for t = 1:num_slice
        % betweenness.all(t,:) = mean(betweenness_wei(squeeze(Graphs.all(t,:,:))));
        % betweenness.delta(t,:) = mean(betweenness_wei(squeeze(Graphs.delta(t,:,:))));
        % betweenness.theta(t,:) = mean(betweenness_wei(squeeze(Graphs.theta(t,:,:))));
        % betweenness.alpha(t,:) = mean(betweenness_wei(squeeze(Graphs.alpha(t,:,:))));
        betweenness.beta(t,:) = mean(betweenness_wei(squeeze(Graphs.beta(t,:,:))));
        betweenness.lowGamma(t,:) = mean(betweenness_wei(squeeze(Graphs.lowGamma(t,:,:))));
    end
    
end