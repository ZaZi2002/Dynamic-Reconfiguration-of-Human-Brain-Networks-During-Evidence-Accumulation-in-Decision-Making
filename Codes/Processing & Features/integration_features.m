function [global_effic,local_effic] = integration_features(Graphs)
    num_slice = size(Graphs.beta,1);
    num_node = size(Graphs.beta,2);

    % Global efficiency
    global_effic = {};
    % global_effic.all = zeros(num_slice,1);
    % global_effic.delta = zeros(num_slice,1);
    % global_effic.theta = zeros(num_slice,1);
    % global_effic.alpha = zeros(num_slice,1);
    global_effic.beta = zeros(num_slice,1);
    global_effic.lowGamma = zeros(num_slice,1);
    for t = 1:num_slice
        % global_effic.all(t) = efficiency_wei(squeeze(Graphs.all(t,:,:)));
        % global_effic.delta(t) = efficiency_wei(squeeze(Graphs.delta(t,:,:)));
        % global_effic.theta(t) = efficiency_wei(squeeze(Graphs.theta(t,:,:)));
        % global_effic.alpha(t) = efficiency_wei(squeeze(Graphs.alpha(t,:,:)));
        global_effic.beta(t) = efficiency_wei(squeeze(Graphs.beta(t,:,:)));
        global_effic.lowGamma(t) = efficiency_wei(squeeze(Graphs.lowGamma(t,:,:)));
    end

    % Local efficiency
    local_effic = {};
    % local_effic.all = zeros(num_slice,num_node);
    % local_effic.delta = zeros(num_slice,num_node);
    % local_effic.theta = zeros(num_slice,num_node);
    % local_effic.alpha = zeros(num_slice,num_node);
    local_effic.beta = zeros(num_slice,num_node);
    local_effic.lowGamma = zeros(num_slice,num_node);
    for t = 1:num_slice
        % local_effic.all(t,:) = efficiency_wei(squeeze(Graphs.all(t,:,:)),2);
        % local_effic.delta(t,:) = efficiency_wei(squeeze(Graphs.delta(t,:,:)),2);
        % local_effic.theta(t,:) = efficiency_wei(squeeze(Graphs.theta(t,:,:)),2);
        % local_effic.alpha(t,:) = efficiency_wei(squeeze(Graphs.alpha(t,:,:)),2);
        local_effic.beta(t,:) = efficiency_wei(squeeze(Graphs.beta(t,:,:)),2);
        local_effic.lowGamma(t,:) = efficiency_wei(squeeze(Graphs.lowGamma(t,:,:)),2);
    end

end