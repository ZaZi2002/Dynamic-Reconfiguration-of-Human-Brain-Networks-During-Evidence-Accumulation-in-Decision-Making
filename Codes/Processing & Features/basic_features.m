function [degree_mean,degree,characteristic_pl,num_triangles,efficiency,radius,diameter] = basic_features(Graphs)
    num_slice = size(Graphs.beta,1);
    num_node = size(Graphs.beta,2);
    
    % Degree
    degree = {};
    % degree.all = zeros(num_slice,num_node);
    % degree.delta = zeros(num_slice,num_node);
    % degree.theta = zeros(num_slice,num_node);
    % degree.alpha = zeros(num_slice,num_node);
    degree.beta = zeros(num_slice,num_node);
    degree.lowGamma = zeros(num_slice,num_node);
    degree_mean = {};
    % degree_mean.all = zeros(num_slice,1);
    % degree_mean.delta = zeros(num_slice,1);
    % degree_mean.theta = zeros(num_slice,1);
    % degree_mean.alpha = zeros(num_slice,1);
    degree_mean.beta = zeros(num_slice,1);
    degree_mean.lowGamma = zeros(num_slice,1);
    for t = 1:num_slice
        % degree.all(t,:) = degrees_und(squeeze(Graphs.all(t,:,:)));
        % degree.delta(t,:) = degrees_und(squeeze(Graphs.delta(t,:,:)));
        % degree.theta(t,:) = degrees_und(squeeze(Graphs.theta(t,:,:)));
        % degree.alpha(t,:) = degrees_und(squeeze(Graphs.alpha(t,:,:)));
        degree.beta(t,:) = degrees_und(squeeze(Graphs.beta(t,:,:)));
        degree.lowGamma(t,:) = degrees_und(squeeze(Graphs.lowGamma(t,:,:)));
        % degree_mean.all(t) = mean(degree.all(t),2);
        % degree_mean.delta(t) = mean(degree.delta(t),2);
        % degree_mean.theta(t) = mean(degree.theta(t),2);
        % degree_mean.alpha(t) = mean(degree.alpha(t),2);
        degree_mean.beta(t) = mean(degree.beta(t),2);
        degree_mean.lowGamma(t) = mean(degree.lowGamma(t),2);
    end

    % Characteristic Path Length
    characteristic_pl = {};
    % characteristic_pl.all = zeros(num_slice,1);
    % characteristic_pl.delta = zeros(num_slice,1);
    % characteristic_pl.theta = zeros(num_slice,1);
    % characteristic_pl.alpha = zeros(num_slice,1);
    characteristic_pl.beta = zeros(num_slice,1);
    characteristic_pl.lowGamma = zeros(num_slice,1);

    efficiency = {};
    % efficiency.all = zeros(num_slice,1);
    % efficiency.delta = zeros(num_slice,1);
    % efficiency.theta = zeros(num_slice,1);
    % efficiency.alpha = zeros(num_slice,1);
    efficiency.beta = zeros(num_slice,1);
    efficiency.lowGamma = zeros(num_slice,1);

    radius = {};
    % radius.all = zeros(num_slice,1);
    % radius.delta = zeros(num_slice,1);
    % radius.theta = zeros(num_slice,1);
    % radius.alpha = zeros(num_slice,1);
    radius.beta = zeros(num_slice,1);
    radius.lowGamma = zeros(num_slice,1);

    diameter = {};
    % diameter.all = zeros(num_slice,1);
    % diameter.delta = zeros(num_slice,1);
    % diameter.theta = zeros(num_slice,1);
    % diameter.alpha = zeros(num_slice,1);
    diameter.beta = zeros(num_slice,1);
    diameter.lowGamma = zeros(num_slice,1);

    for t = 1:num_slice
        % [characteristic_pl.all(t),efficiency.all(t),~,radius.all(t),diameter.all(t)] = charpath(distance_wei(squeeze(Graphs.all(t,:,:))),0,0);
        % [characteristic_pl.delta(t),efficiency.delta(t),~,radius.delta(t),diameter.delta(t)] = charpath(distance_wei(squeeze(Graphs.all(t,:,:))),0,0);
        % [characteristic_pl.theta(t),efficiency.theta(t),~,radius.theta(t),diameter.theta(t)] = charpath(distance_wei(squeeze(Graphs.delta(t,:,:))),0,0);
        % [characteristic_pl.alpha(t),efficiency.alpha(t),~,radius.alpha(t),diameter.alpha(t)] = charpath(distance_wei(squeeze(Graphs.theta(t,:,:))),0,0);
        [characteristic_pl.beta(t),efficiency.beta(t),~,radius.beta(t),diameter.beta(t)] = charpath(distance_wei(squeeze(Graphs.beta(t,:,:))),0,0);
        [characteristic_pl.lowGamma(t),efficiency.lowGamma(t),~,radius.lowGamma(t),diameter.lowGamma(t)] = charpath(distance_wei(squeeze(Graphs.lowGamma(t,:,:))),0,0);
    end

    % Number of Triangles
    num_triangles = {};
    % num_triangles.all = zeros(num_slice,1);
    % num_triangles.delta = zeros(num_slice,1);
    % num_triangles.theta = zeros(num_slice,1);
    % num_triangles.alpha = zeros(num_slice,1);
    num_triangles.beta = zeros(num_slice,1);
    num_triangles.lowGamma = zeros(num_slice,1);
    for t = 1:num_slice
        % num_triangles.all(t) = sum(clustering_coef_wu(squeeze(Graphs.all(t,:,:))) ...
        %     .* degree.all(t) .* (degree.all(t) - 1) / 2);
        % num_triangles.delta(t) = sum(clustering_coef_wu(squeeze(Graphs.delta(t,:,:))) ...
        %     .* degree.delta(t) .* (degree.delta(t) - 1) / 2);
        % num_triangles.theta(t) = sum(clustering_coef_wu(squeeze(Graphs.theta(t,:,:))) ...
        %     .* degree.theta(t) .* (degree.theta(t) - 1) / 2);
        % num_triangles.alpha(t) = sum(clustering_coef_wu(squeeze(Graphs.alpha(t,:,:))) ...
        %     .* degree.alpha(t) .* (degree.alpha(t) - 1) / 2);
        num_triangles.beta(t) = sum(clustering_coef_wu(squeeze(Graphs.beta(t,:,:))) ...
            .* degree.beta(t) .* (degree.beta(t) - 1) / 2);
        num_triangles.lowGamma(t) = sum(clustering_coef_wu(squeeze(Graphs.lowGamma(t,:,:))) ...
            .* degree.lowGamma(t) .* (degree.lowGamma(t) - 1) / 2);
    end

end