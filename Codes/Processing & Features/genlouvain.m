function [S,Q] = genlouvain(B,limit,verbose,randord,randmove,S0)
%GENLOUVAIN  Louvain-like community detection, specified quality function.

% Version: 2.2.1
% Date: Modified version

%   [S,Q] = GENLOUVAIN(B) with matrix B implements a Louvain-like greedy
%   community detection method using the modularity/quality matrix B that
%   encodes the quality function Q, defined by summing over all elements
%   B(i,j) such that nodes i and j are placed in the same community.
%   The output vector S encodes the obtained community assignments, with
%   S(i) identifying the community to which node i has been assigned.
%   The output Q gives the quality of the resulting partition of the network.

%set default for maximum size of modularity matrix
if nargin<2||isempty(limit)
    limit = 10000;
end

%set level of reported/displayed text output
if nargin<3||isempty(verbose)
    verbose = 1;
end
if verbose
    mydisp = @(s) disp(s);
else
    mydisp = @(s) [];
end

%set randperm- v. index-ordered
if nargin<4||isempty(randord)
    randord = 1;
end
if randord
    myord = @(n) randperm(n);
else
    myord = @(n) 1:n;
end

%set move function (maximal (original Louvain) or random improvement)
if nargin<5||isempty(randmove)
    randmove=false;
end
if randmove
    if ischar(randmove)
        if any(strcmp(randmove,{'move','moverand','moverandw'}))
            movefunction=randmove;
        else
            error('unknown value for ''randmove''');
        end
    else
        % backwards compatibility: randmove=true
        movefunction='moverand';
    end
else
    movefunction='move';
end

% set initial partition
if nargin<6||isempty(S0)
    S0=[];
end

%initialize variables and do symmetry check
if isa(B,'function_handle')
    n=length(B(1));
    S=(1:n)';
    if isempty(S0)
        S0=(1:n)';
    else
        if numel(S0)==n
            S0 = tidyconfig(S0); % tidy config
        else
            error('Initial partition does not have the right size for the modularity matrix')
        end
    end
    %symmetry check (only checks symmetry of a small part of the matrix)
    M=B;
    it(:,1)=M(1);
    ii=find(it(2:end)>0,3)+1;
    ii=[1,ii'];
    for i=2:length(ii)
        it(:,i)=M(ii(i));
    end
    it=it(ii,:);
    if norm(full(it-it'))>2*eps
        error('Function handle does not correspond to a symmetric matrix. Deviation: %g', norm(full(it-it')))
    end
else
    n = length(B);
    S = (1:n)';
    if isempty(S0)
        S0=(1:n)';
    else
        if numel(S0)==n
            % clean input partition
            S0 = tidyconfig(S0);
        else
            error('Initial partition does not have the right size for the modularity matrix');
        end
    end
    %symmetry check and fix if not symmetric
    if nnz(B-B')
        B=(B+B')/2; disp('WARNING: Forced symmetric B matrix')
    end
    M=B;
end

dtot=eps; %keeps track of total change in modularity
y = S0;
%Run using function handle, if provided
while (isa(M,'function_handle')) %loop around each "pass" (in language of Blondel et al) with B function handle
    clocktime=clock;
    mydisp(['Merging ',num2str(length(y)),' communities  ',datestr(clocktime)]);
    Sb=S;
    yb=[];
    while ~isequal(yb,y)
        dstep=1;    %keeps track of change in modularity in pass
        yb=[];
        while (~isequal(yb,y))&&(dstep/dtot>2*eps)&&(dstep>10*eps) %This is the loop around Blondel et al's "first phase"
            yb = y;
            dstep=0;
            y = tidyconfig(y); % tidy the configuration
            for i=myord(length(M(1)))
                di = move_node(movefunction, i, M, y);
                dstep=dstep+di;
            end

            dtot=dtot+dstep;
            y = tidyconfig(y);
            mydisp([num2str(max(y)),' change: ',num2str(dstep),...
                ' total: ',num2str(dtot),' relative: ',num2str(dstep/dtot)]);
        end
        yb=y;
    end

    %update partition
    S=y(S);
    y = unique(y);  %unique also puts elements in ascending order

    %calculate modularity and return if converged
    if isequal(Sb,S)
        Q=0;
        P=sparse(y,1:length(y),1);
        for i=1:length(M(1))
            Q=Q+(P*M(i))'*P(:,i);
        end
        Q=full(Q);
        return
    end

    %check whether #groups < limit
    t = length(unique(S));
    if (t>limit)
        M=@(i) metanetwork_i(B,i, S); %use function handle if #groups>limit
    else
        J = metanetwork(B, S);   %convert to matrix if #groups small enough
        B = J;
        M=B;
    end
end

% Run using matrix B
S2 = (1:length(B))';
Sb = [];
while ~isequal(Sb,S2) %loop around each "pass" (in language of Blondel et al) with B matrix
    clocktime=clock;
    mydisp(['Merging ',num2str(max(y)),' communities  ',datestr(clocktime)]);

    Sb = S2;
    yb = [];
    while ~isequal(yb,y)
        dstep=1;
        while (~isequal(yb,y)) && (dstep/dtot>2*eps) && (dstep>10*eps) %This is the loop around Blondel et al's "first phase"
            yb = y;
            dstep=0;
            y = tidyconfig(y);
            for i = myord(length(M))
                di = move_node(movefunction, i, M, y);
                dstep=dstep+di;
            end
            dtot=dtot+dstep;
            y = tidyconfig(y);

            mydisp([num2str(max(y)),' change: ',num2str(dstep),...
                ' total: ',num2str(dtot),' relative: ',num2str(dstep/dtot)]);
        end
        yb=y;
    end

    %update partition
    S=y(S);
    S2=y(S2);

    if isequal(Sb,S2)
        P=sparse(y,1:length(y),1);
        Q=full(sum(sum((P*M).*P)));
        return
    end

    M = metanetwork(B,S2);
    y = unique(S2);  %unique also puts elements in ascending order
end

end

function S = tidyconfig(S)
% Tidy the community assignment
[~, ~, S] = unique(S);
end

function M = metanetwork(J,S)
%Computes new aggregated network (communities --> nodes)
PP = sparse(1:length(S),S,1);
M = PP'*J*PP;
end

function Mi = metanetwork_i(J,i, S)
%ith column of metanetwork (used to create function handle)
ind = find(S == i);
Mi = sum(J(:, ind), 2);
Mi = Mi(ind);
end

function deltaQ = move_node(movefunction, i, M, S)
% Function to move a node i to a different community and calculate change in modularity
current_comm = S(i);
unique_comms = unique(S);
deltaQ = 0;

% Calculate the gain in modularity by moving i to each unique community
for comm = unique_comms'
    if comm ~= current_comm
        % Temporarily move i to the community 'comm'
        S_temp = S;
        S_temp(i) = comm;
        deltaQ_temp = calculate_modularity_gain(i, M, S_temp);
        
        switch movefunction
            case 'move'
                if deltaQ_temp > deltaQ
                    deltaQ = deltaQ_temp;
                    S(i) = comm;
                end
            case 'moverand'
                if deltaQ_temp > 0 && rand() < 0.5
                    deltaQ = deltaQ_temp;
                    S(i) = comm;
                end
            case 'moverandw'
                % Move with probability proportional to the modularity gain
                if deltaQ_temp > 0 && rand() < deltaQ_temp / sum(deltaQ_temp)
                    deltaQ = deltaQ_temp;
                    S(i) = comm;
                end
        end
    end
end
end

function deltaQ = calculate_modularity_gain(i, M, S)
% Function to calculate the gain in modularity when moving node i
current_comm = S(i);
unique_comms = unique(S);
deltaQ = 0;
Q_before = modularity(M, S);

for comm = unique_comms'
    if comm ~= current_comm
        S_temp = S;
        S_temp(i) = comm;
        Q_after = modularity(M, S_temp);
        deltaQ_temp = Q_after - Q_before;
        
        if deltaQ_temp > deltaQ
            deltaQ = deltaQ_temp;
        end
    end
end
end

function Q = modularity(M, S)
% Compute the modularity for a given partition S
P = sparse(S, 1:length(S), 1);
Q = sum(sum((P*M).*P));
end
