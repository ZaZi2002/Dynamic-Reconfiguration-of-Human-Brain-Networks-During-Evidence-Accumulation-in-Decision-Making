%% Calculating mean graphs of response and first blob locked windows
clc

for i = 1:60
    if i < 13 || i > 16
        [Graphs_response(i),Graphs_firstBlob(i)] = start_end(i);
    end
end

save('Graphs_firstBlob_blocks.mat','Graphs_firstBlob');
save('Graphs_response_blocks.mat','Graphs_response');

function [Graphs_response,Graphs_firstBlob] = start_end(subject)

block_counter = 0;

Graphs_response = {};
% Graphs_response.all = 0;
% Graphs_response.delta = 0;
% Graphs_response.theta = 0;
% Graphs_response.alpha = 0;
Graphs_response.beta = 0;
Graphs_response.lowGamma = 0;

Graphs_firstBlob = {};
% Graphs_firstBlob.all = 0;
% Graphs_firstBlob.delta = 0;
% Graphs_firstBlob.theta = 0;
% Graphs_firstBlob.alpha = 0;
Graphs_firstBlob.beta = 0;
Graphs_firstBlob.lowGamma = 0;

if subject == 1

    EEG = load('AGRK_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 1!')

elseif subject == 2

    EEG = load('AGRK_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 2!')

elseif subject == 3

    EEG = load('AGRK_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 3!')

elseif subject == 4
    
    EEG = load('AGRK_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 4!')

elseif subject == 5

    EEG = load('AliK_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 5!')

elseif subject == 6
    
    EEG = load('AliK_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 6!')

elseif subject == 7
    
    EEG = load('AliK_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 7!')

elseif subject == 8
    
    EEG = load('AliK_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 8!')

elseif subject == 9

    EEG = load('Fara_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 9!')

elseif subject == 10
    
    EEG = load('Fara_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 10!')

elseif subject == 11
    
    EEG = load('Fara_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 11!')

elseif subject == 12
    
    EEG = load('Fara_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 12!')

elseif subject == 13

    EEG = load('Kiani_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 13!')

elseif subject == 14
    
    EEG = load('Kiani_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 14!')

elseif subject == 15
    
    EEG = load('Kiani_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 15!')

elseif subject == 16
    
    EEG = load('Kiani_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 16!')

elseif subject == 17

    EEG = load('PYMN_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 17!')

elseif subject == 18
    
    EEG = load('NVRDY_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 18!')

elseif subject == 19
    
    EEG = load('NVRDY_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 19!')

elseif subject == 20
    
    EEG = load('NVRDY_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 20!')

elseif subject == 21

    EEG = load('PRY_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 21!')

elseif subject == 22
    
    EEG = load('PRY_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 22!')

elseif subject == 23
    
    EEG = load('PRY_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 23!')

elseif subject == 24
    
    EEG = load('PRY_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 24!')

elseif subject == 25

    EEG = load('ZHDY_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 25!')

elseif subject == 26
    
    EEG = load('ZHDY_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 26!')

elseif subject == 27
    
    EEG = load('ZHDY_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 27!')

elseif subject == 28
    
    EEG = load('ZHDY_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 28!')

elseif subject == 29

    EEG = load('AAli_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 29!')

elseif subject == 30

    EEG = load('AAli_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 30!')

elseif subject == 31
    
    EEG = load('AAli_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 31!')

elseif subject == 32

    EEG = load('AAli_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 31!')

elseif subject == 33
    
    EEG = load('Amiri_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 33!')

elseif subject == 34
    
    EEG = load('Amiri_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 34!')

elseif subject == 35
    
    EEG = load('Amiri_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 35!')

elseif subject == 36

    EEG = load('MMDD_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 36!')

elseif subject == 37
    
    EEG = load('MMDD_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 37!')

elseif subject == 38
    
    EEG = load('MMDD_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 38!')

elseif subject == 39
    
    EEG = load('MMDD_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 39!')

elseif subject == 40

    EEG = load('Suda_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 40!')

elseif subject == 41
    
    EEG = load('Suda_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 41!')

elseif subject == 42
    
    EEG = load('Suda_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 42!')

elseif subject == 43
    
    EEG = load('Suda_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 43!')

elseif subject == 44

    EEG = load('Par_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 44!')

elseif subject == 45
    
    EEG = load('Par_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 45!')

elseif subject == 46
    
    EEG = load('Par_5.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 46!')

elseif subject == 47
    
    EEG = load('Par_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 47!')

elseif subject == 50
    
    EEG = load('Atefe_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 50!')

elseif subject == 51
    
    EEG = load('Atefe_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 51!')

elseif subject == 52
    
    EEG = load('Atefe_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 52!')

elseif subject == 53
    
    EEG = load('Atefe_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 53!')

elseif subject == 54
    
    EEG = load('MMDD2_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 54!')

elseif subject == 55
    
    EEG = load('MMDD2_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 55!')

elseif subject == 56
    
    EEG = load('MMDD2_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 56!')

elseif subject == 57
    
    EEG = load('MMDD2_4.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 57!')

elseif subject == 58
    
    EEG = load('Shervin_1.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 58!')
  
elseif subject == 59
    
    EEG = load('Shervin_2.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 59!')

elseif subject == 60
    
    EEG = load('Shervin_3.mat');
    response_graphs = response_locked(EEG);
    firstBlob_graphs = firstBlob_locked(EEG);
    Graphs_response = sum_graphs(response_graphs,Graphs_response);
    Graphs_firstBlob = sum_graphs(firstBlob_graphs,Graphs_firstBlob);
    block_counter = block_counter + 1;
    disp('Done 60!')

end

% Mean of graphs
% Graphs_response.all = Graphs_response.all / block_counter;
% Graphs_response.delta = Graphs_response.delta / block_counter;
% Graphs_response.theta = Graphs_response.theta / block_counter;
% Graphs_response.alpha = Graphs_response.alpha / block_counter;
Graphs_response.beta = Graphs_response.beta / block_counter;
Graphs_response.lowGamma = Graphs_response.lowGamma / block_counter;

% Graphs_firstBlob.all = Graphs_firstBlob.all / block_counter;
% Graphs_firstBlob.delta = Graphs_firstBlob.delta / block_counter;
% Graphs_firstBlob.theta = Graphs_firstBlob.theta / block_counter;
% Graphs_firstBlob.alpha = Graphs_firstBlob.alpha / block_counter;
Graphs_firstBlob.beta = Graphs_firstBlob.beta / block_counter;
Graphs_firstBlob.lowGamma = Graphs_firstBlob.lowGamma / block_counter;

% Response locked graphs
function response_graphs = response_locked(EEG)
    num_sources = 68;
    num_window = 1;
    % resLockedGraph = zeros(num_window,num_sources,num_sources);
    % resLockedGraph_delta = zeros(num_window,num_sources,num_sources);
    % resLockedGraph_theta = zeros(num_window,num_sources,num_sources);
    % resLockedGraph_alpha = zeros(num_window,num_sources,num_sources);
    resLockedGraph_beta = zeros(num_window,num_sources,num_sources);
    resLockedGraph_lowGamma = zeros(num_window,num_sources,num_sources);
    %resLockedGraph_highGamma = zeros(num_window,num_sources,num_sources);
    for i = 1:size(EEG.Windows_beta.number_Window_Trial_backward,1)
        if EEG.isFixedDuration(EEG.Windows_beta.backwindowTrials(i)) ~= 1 && EEG.Windows_beta.number_Window_Trial_backward(i) <= num_window
            % resLockedGraph(EEG.Windows.number_Window_Trial_backward(i),:,:) = resLockedGraph(EEG.Windows.number_Window_Trial_backward(i),:,:) + EEG.Windows.backwardGraphs(i,:,:);
            % resLockedGraph_delta(EEG.Windows.number_Window_Trial_backward(i),:,:) = resLockedGraph_delta(EEG.Windows.number_Window_Trial_backward(i),:,:) + EEG.Windows_delta.backwardGraphs(i,:,:);
            % resLockedGraph_theta(EEG.Windows.number_Window_Trial_backward(i),:,:) = resLockedGraph_theta(EEG.Windows.number_Window_Trial_backward(i),:,:) + EEG.Windows_theta.backwardGraphs(i,:,:);
            % resLockedGraph_alpha(EEG.Windows.number_Window_Trial_backward(i),:,:) = resLockedGraph_alpha(EEG.Windows.number_Window_Trial_backward(i),:,:) + EEG.Windows_alpha.backwardGraphs(i,:,:);
            resLockedGraph_beta(EEG.Windows_beta.number_Window_Trial_backward(i),:,:) = resLockedGraph_beta(EEG.Windows_beta.number_Window_Trial_backward(i),:,:) + EEG.Windows_beta.backwardGraphs(i,:,:);
            resLockedGraph_lowGamma(EEG.Windows_beta.number_Window_Trial_backward(i),:,:) = resLockedGraph_lowGamma(EEG.Windows_beta.number_Window_Trial_backward(i),:,:) + EEG.Windows_lowGamma.backwardGraphs(i,:,:);
            % resLockedGraph_highGamma(EEG.Trials.Windows.number_Window_Trial_backward(i),:,:) = resLockedGraph_highGamma(EEG.Trials.Windows.number_Window_Trial_backward(i),:,:) + EEG.Windows_highGamma.backwardGraphs(i,:,:);
        end
    end
    % response_graphs.all = resLockedGraph / 80;
    % response_graphs.delta = resLockedGraph_delta / 80;
    % response_graphs.theta = resLockedGraph_theta / 80;
    % response_graphs.alpha = resLockedGraph_alpha / 80;
    response_graphs.beta = resLockedGraph_beta / 80;
    response_graphs.lowGamma = resLockedGraph_lowGamma / 80;
    % resLockedGraph_highGamma = resLockedGraph_highGamma / 80;
end

% First blob locked graphs
function firstBlob_graphs = firstBlob_locked(EEG)
    num_sources = 68;
    num_window = 2;
    % blobLockedGraph = zeros(num_window-1,num_sources,num_sources);
    % blobLockedGraph_delta = zeros(num_window-1,num_sources,num_sources);
    % blobLockedGraph_theta = zeros(num_window-1,num_sources,num_sources);
    % blobLockedGraph_alpha = zeros(num_window-1,num_sources,num_sources);
    blobLockedGraph_beta = zeros(num_window-1,num_sources,num_sources);
    blobLockedGraph_lowGamma = zeros(num_window-1,num_sources,num_sources);
    %blobLockedGraph_highGamma = zeros(4,num_sources,num_sources);
    for i = 1:size(EEG.Windows_beta.number_Window_Trial_forward,1)
        if EEG.isFixedDuration(EEG.Windows_beta.forwindowTrials(i)) ~= 1 && EEG.Windows_beta.number_Window_Trial_forward(i) <= num_window && EEG.Windows_beta.number_Window_Trial_forward(i) > 1 
            % blobLockedGraph(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows.forwardGraphs(i,:,:);
            % blobLockedGraph_delta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_delta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_delta.forwardGraphs(i,:,:);
            % blobLockedGraph_theta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_theta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_theta.forwardGraphs(i,:,:);
            % blobLockedGraph_alpha(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_alpha(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_alpha.forwardGraphs(i,:,:);
            blobLockedGraph_beta(EEG.Windows_beta.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_beta(EEG.Windows_beta.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_beta.forwardGraphs(i,:,:);
            blobLockedGraph_lowGamma(EEG.Windows_beta.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_lowGamma(EEG.Windows_beta.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_lowGamma.forwardGraphs(i,:,:);
            %blobLockedGraph_highGamma(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_highGamma(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_highGamma.forwardGraphs(i,:,:);
        end
    end
    % firstBlob_graphs.all = blobLockedGraph / 80;
    % firstBlob_graphs.delta = blobLockedGraph_delta / 80;
    % firstBlob_graphs.theta = blobLockedGraph_theta / 80;
    % firstBlob_graphs.alpha = blobLockedGraph_alpha / 80;
    firstBlob_graphs.beta = blobLockedGraph_beta / 80;
    firstBlob_graphs.lowGamma = blobLockedGraph_lowGamma / 80;
    %blobLockedGraph_highGamma = blobLockedGraph_highGamma / 80;
end

% Sum graphs
function Graphs = sum_graphs(locked_graphs,Graphs)
    % Graphs.all = Graphs.all + locked_graphs.all;
    % Graphs.delta = Graphs.delta + locked_graphs.delta;
    % Graphs.theta = Graphs.theta + locked_graphs.theta;
    % Graphs.alpha = Graphs.alpha + locked_graphs.alpha;
    Graphs.beta = Graphs.beta + locked_graphs.beta;
    Graphs.lowGamma = Graphs.lowGamma + locked_graphs.lowGamma;
end

end