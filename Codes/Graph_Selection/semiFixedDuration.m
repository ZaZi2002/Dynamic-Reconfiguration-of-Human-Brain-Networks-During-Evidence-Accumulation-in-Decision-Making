%% Calculating mean graphs of fixed duration trials
clc
clear
for i = 1:16
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
    EEG = load('AGRK_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 1!')
    
    EEG = load('AGRK_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 2!')
    
    EEG = load('AGRK_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 3!')
    
    EEG = load('AGRK_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 4!')

elseif subject == 2

    EEG = load('AliK_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 5!')
    
    EEG = load('AliK_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 6!')
    
    EEG = load('AliK_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 7!')
    
    EEG = load('AliK_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 8!')

elseif subject == 3

    EEG = load('Fara_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 9!')
    
    EEG = load('Fara_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 10!')
    
    EEG = load('Fara_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 11!')
    
    EEG = load('Fara_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 12!')

elseif subject == 4

    EEG = load('Kiani_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 13!')
    
    EEG = load('Kiani_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 14!')
    
    EEG = load('Kiani_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 15!')
    
    EEG = load('Kiani_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 16!')

elseif subject == 5

    EEG = load('NVRDY_2.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 17!')
    
    EEG = load('NVRDY_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 18!')
    
    EEG = load('NVRDY_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 19!')

    EEG = load('PYMN_1.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 20!')

elseif subject == 6

    EEG = load('PRY_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 21!')
    
    EEG = load('PRY_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 22!')
    
    EEG = load('PRY_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 23!')
    
    EEG = load('PRY_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 24!')

elseif subject == 7

    EEG = load('ZHDY_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 25!')
    
    EEG = load('ZHDY_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 26!')
    
    EEG = load('ZHDY_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 27!')
    
    EEG = load('ZHDY_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 28!')

elseif subject == 8

    EEG = load('AAli_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 29!')
    
    EEG = load('AAli_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 30!')
    
    EEG = load('AAli_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 31!')
    
    EEG = load('AAli_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 32!')

elseif subject == 9

    EEG = load('Amiri_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 33!')
    
    EEG = load('Amiri_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 34!')
    
    EEG = load('Amiri_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 35!')

elseif subject == 10

    EEG = load('MMDD_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 36!')
    
    EEG = load('MMDD_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 37!')
    
    EEG = load('MMDD_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 38!')
    
    EEG = load('MMDD_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 39!')

elseif subject == 11

    EEG = load('Suda_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 40!')
    
    EEG = load('Suda_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 41!')
    
    EEG = load('Suda_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 42!')
    
    EEG = load('Suda_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 43!')

elseif subject == 12

    EEG = load('Par_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 44!')
    
    EEG = load('Par_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 45!')
    
    EEG = load('Par_5.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 46!')
    
    % EEG = load('Par_4.mat');
    % repeateds = repeateds + blob_number(EEG);
    % [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    % blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    % [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    % disp('Done 47!')

elseif subject == 13

    EEG = load('HDNY_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 47!')
    
    EEG = load('HDNY_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 48!')
    
    EEG = load('HDNY_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 49!')
    
elseif subject == 14

    EEG = load('Atefe_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 50!')
    
    EEG = load('Atefe_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 51!')
    
    EEG = load('Atefe_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 52!')
    
    EEG = load('Atefe_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 53!')

elseif subject == 15

    EEG = load('MMDD2_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 54!')
    
    EEG = load('MMDD2_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 55!')
    
    EEG = load('MMDD2_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 56!')
    
    EEG = load('MMDD2_4.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 57!')

elseif subject == 16

    EEG = load('Shervin_1.mat');
    repeateds = blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 58!')
    
    EEG = load('Shervin_2.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 59!')
    
    EEG = load('Shervin_3.mat');
    repeateds = repeateds + blob_number(EEG);
    [semiFixedTrialsIndexes,counter] = semi_fixed(EEG,repeateds,fixedNumber);
    blobLockedGraphs = forward_graphs(EEG,semiFixedTrialsIndexes,fixedNumber);
    [Graphs,tedad] = sum_graphs(blobLockedGraphs,Graphs,counter,tedad);
    disp('Done 60!')

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
    num_sources = 68;
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
                % blobLockedGraph(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows.forwardGraphs(i,:,:);
                % blobLockedGraph_delta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_delta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_delta.forwardGraphs(i,:,:);
                % blobLockedGraph_theta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_theta(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_theta.forwardGraphs(i,:,:);
                % blobLockedGraph_alpha(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_alpha(EEG.Windows.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_alpha.forwardGraphs(i,:,:);
                blobLockedGraph_beta(EEG.Windows_beta.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_beta(EEG.Windows_beta.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_beta.forwardGraphs(i,:,:);
                blobLockedGraph_lowGamma(EEG.Windows_beta.number_Window_Trial_forward(i)-1,:,:) = blobLockedGraph_lowGamma(EEG.Windows_lowGamma.number_Window_Trial_forward(i)-1,:,:) + EEG.Windows_lowGamma.forwardGraphs(i,:,:);
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