function Graphs = thresholder(Graphs,C)
    num_slice = size(Graphs.beta,1);
    num_node = size(Graphs.beta,2);
         
    % Threshold 1
    % thresh(1) = C*max(max(max(Graphs.all)));
    % thresh(2) = C*max(max(max(Graphs.delta)));
    % thresh(3) = C*max(max(max(Graphs.theta)));
    % thresh(4) = C*max(max(max(Graphs.alpha)));
    thresh(5) = C*max(max(max(Graphs.beta)));
    thresh(6) = C*max(max(max(Graphs.lowGamma)));

    % Threshold 2
    if C ~= 0
        % A = reshape(Graphs.all,1,[]);
        % A = sort(A,2,"descend");
        % thresh(1) = A(ceil(C*size(A,2)));
        % A = reshape(Graphs.delta,1,[]);
        % A = sort(A,2,"descend");
        % thresh(2) = A(ceil(C*size(A,2)));
        % A = reshape(Graphs.theta,1,[]);
        % A = sort(A,2,"descend");
        % thresh(3) = A(ceil(C*size(A,2)));
        % A = reshape(Graphs.alpha,1,[]);
        % A = sort(A,2,"descend");
        % thresh(4) = A(ceil(C*size(A,2)));
        A = reshape(Graphs.beta,1,[]);
        A = sort(A,2,"descend");
        thresh(5) = A(ceil(C*size(A,2)));
        A = reshape(Graphs.lowGamma,1,[]);
        A = sort(A,2,"descend");
        thresh(6) = A(ceil(C*size(A,2)));
    end

    % Applying threshold
    for t = 1:num_slice
        % Graphs.all(t,:,:) = threshold_absolute(squeeze(Graphs.all(t,:,:)), thresh(1));
        % Graphs.delta(t,:,:) = threshold_absolute(squeeze(Graphs.delta(t,:,:)), thresh(2));
        % Graphs.theta(t,:,:) = threshold_absolute(squeeze(Graphs.theta(t,:,:)), thresh(3));
        % Graphs.alpha(t,:,:) = threshold_absolute(squeeze(Graphs.alpha(t,:,:)), thresh(4));
        Graphs.beta(t,:,:) = threshold_absolute(squeeze(Graphs.beta(t,:,:)), thresh(5));
        Graphs.lowGamma(t,:,:) = threshold_absolute(squeeze(Graphs.lowGamma(t,:,:)), thresh(6));
    end