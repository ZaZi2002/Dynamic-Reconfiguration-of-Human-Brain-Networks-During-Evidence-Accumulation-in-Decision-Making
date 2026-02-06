%% Calculating mean graphs of fixed duration trials
clc
clear
EEG = load('AGRK_1_32.mat');
for i = 1:7
    if i ~= 4
        Graphs_3(i) = fixedBlobs(3,i);
        Graphs_4(i) = fixedBlobs(4,i);
        Graphs_5(i) = fixedBlobs(5,i);
        Graphs_6(i) = fixedBlobs(6,i);
        Graphs_7(i) = fixedBlobs(7,i);
        Graphs_8(i) = fixedBlobs(8,i);
        Graphs_9(i) = fixedBlobs(9,i);
    end
end

save('Graphs_forward_3_subject.mat','Graphs_3');
save('Graphs_forward_4_subject.mat','Graphs_4');
save('Graphs_forward_5_subject.mat','Graphs_5');
save('Graphs_forward_6_subject.mat','Graphs_6');
save('Graphs_forward_7_subject.mat','Graphs_7');
save('Graphs_forward_8_subject.mat','Graphs_8');
save('Graphs_forward_9_subject.mat','Graphs_9');


function Graphs = fixedBlobs(fixedNumber,subject)
clc

Graphs = {};
% Graphs.all = 0;
% Graphs.delta = 0;
% Graphs.theta = 0;
% Graphs.alpha = 0;
Graphs.beta = 0;
Graphs.lowGamma = 0;
tedad = 0;

if subject == 1
    EEG = load('AGRK_1_32.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 1!')
    
    EEG = load('AGRK_2_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 2!')
    
    EEG = load('AGRK_3_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 3!')
    
    EEG = load('AGRK_4_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 4!')

elseif subject == 2

    EEG = load('AliK_1_32.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 5!')
    
    EEG = load('AliK_2_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 6!')
    
    EEG = load('AliK_3_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 7!')
    
    EEG = load('AliK_4_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 8!')

elseif subject == 3

    EEG = load('Fara_1_32.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 9!')
    
    EEG = load('Fara_2_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 10!')
    
    EEG = load('Fara_3_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 11!')
    
    EEG = load('Fara_4_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 12!')

elseif subject == 4

    EEG = load('Kiani_1_32.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 13!')
    
    EEG = load('Kiani_2_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 14!')
    
    EEG = load('Kiani_3_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 15!')
    
    EEG = load('Kiani_4_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 16!')

elseif subject == 5

    EEG = load('NVRDY_2_32.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 17!')
    
    EEG = load('NVRDY_3_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 18!')
    
    EEG = load('NVRDY_4_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 19!')

    EEG = load('PYMN_1_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 20!')

elseif subject == 6

    EEG = load('PRY_1_32.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 21!')
    
    EEG = load('PRY_2_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 22!')
    
    EEG = load('PRY_3_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 23!')
    
    EEG = load('PRY_4_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 24!')

elseif subject == 7

    EEG = load('ZHDY_1_32.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 25!')
    
    EEG = load('ZHDY_2_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 26!')
    
    EEG = load('ZHDY_3_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 27!')
    
    EEG = load('ZHDY_4_32.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 28!')

end

% Mean of graphs
% Graphs.all = Graphs.all / tedad;
% Graphs.delta = Graphs.delta / tedad;
% Graphs.theta = Graphs.theta / tedad;
% Graphs.alpha = Graphs.alpha / tedad;
Graphs.beta = Graphs.beta / tedad;
Graphs.lowGamma = Graphs.lowGamma / tedad;


% Finding mode number of blobs
function repeateds = blob_number(EEG)
    num = 120;
    repeateds = zeros(50,1);
    for i = 1:num
        if EEG.isFixedDuration(i) == 0
            repeateds(EEG.blobs(i)) = repeateds(EEG.blobs(i)) + 1;
        end
    end
end

% Finding semi-fixed trials
function [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber)
    semiFixedTrialsIndexes = zeros(repeateds(fixedNumber),1);
    counter = 0;
    for i = 1:120
        if EEG.blobs(i) == fixedNumber && EEG.isFixedDuration(i) == 0
            counter = counter + 1;
            semiFixedTrialsIndexes(counter) = i;
        end
    end
end

% Forward locked graphs
function blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber)
    windSize = 400;
    num_graphs = int32(fixedNumber*400 / windSize) -1;
    num_sources = 30;
    % blobLockedGraph = zeros(num_graphs,num_sources,num_sources);
    % blobLockedGraph_delta = zeros(num_graphs,num_sources,num_sources);
    % blobLockedGraph_theta = zeros(num_graphs,num_sources,num_sources);
    % blobLockedGraph_alpha = zeros(num_graphs,num_sources,num_sources);
    blobLockedGraph_beta = zeros(num_graphs,num_sources,num_sources);
    blobLockedGraph_lowGamma = zeros(num_graphs,num_sources,num_sources);
    % blobLockedGraph_highGamma = zeros(num_graphs,num_sources,num_sources);
    for i = 1:size(EEG.Windows_beta.number_Window_Trial_forward,1)
        if EEG.isFixedDuration(EEG.Windows_beta.forwindowTrials(i)) ~= 1 && EEG.Windows_beta.number_Window_Trial_forward(i) > 1
            if ismember(EEG.Windows_beta.forwindowTrials(i),semiFixedTrialsIndexes) 
                % blobLockedGraph(EEG.Windows_beta.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows.forwardGraphs(i,:,:);
                % blobLockedGraph_delta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_delta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_delta.forwardGraphs(i,:,:);
                % blobLockedGraph_theta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_theta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_theta.forwardGraphs(i,:,:);
                % blobLockedGraph_alpha(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_alpha(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_alpha.forwardGraphs(i,:,:);
                blobLockedGraph_beta(EEG.Windows_beta.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_beta(EEG.Windows_beta.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_beta.forwardGraphs(i,:,:);
                blobLockedGraph_lowGamma(EEG.Windows_lowGamma.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_lowGamma(EEG.Windows_lowGamma.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_lowGamma.forwardGraphs(i,:,:);
                % blobLockedGraph_highGamma(EEG.Windows.number_Window_Trial_forward(i),:,:) = blobLockedGraph_highGamma(EEG.Windows.number_Window_Trial_forward(i),:,:) + EEG.Windows_highGamma.forwardGraphs(i,:,:);
            end
        end
    end
    % blobLockedGraphs.blobLockedGraph = blobLockedGraph;
    % blobLockedGraphs.blobLockedGraph_delta = blobLockedGraph_delta;
    % blobLockedGraphs.blobLockedGraph_theta = blobLockedGraph_theta;
    % blobLockedGraphs.blobLockedGraph_alpha = blobLockedGraph_alpha;
    blobLockedGraphs.blobLockedGraph_beta = blobLockedGraph_beta;
    blobLockedGraphs.blobLockedGraph_lowGamma = blobLockedGraph_lowGamma;
end

% Forward sum graphs
function [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad)

    % Graphs.all = Graphs.all + blobLockedGraphs.blobLockedGraph;
    % Graphs.delta = Graphs.delta + blobLockedGraphs.blobLockedGraph_delta;
    % Graphs.theta = Graphs.theta + blobLockedGraphs.blobLockedGraph_theta;
    % Graphs.alpha = Graphs.alpha + blobLockedGraphs.blobLockedGraph_alpha;
    Graphs.beta = Graphs.beta + blobLockedGraphs.blobLockedGraph_beta;
    Graphs.lowGamma = Graphs.lowGamma + blobLockedGraphs.blobLockedGraph_lowGamma;
    tedad = tedad + counter;
end

end