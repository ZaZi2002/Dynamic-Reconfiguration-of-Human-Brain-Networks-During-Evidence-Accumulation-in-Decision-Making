
%% Loading data and epoching
clc
clear all

eeglab;

%%
EEG = pop_loadset('AGRK_B1_ica.set');
Source = laplace(EEG);
load('Informations\Data_AGRK1_31_Jan_2024_13_6.mat')
Details = Data_AGRK1_31_Jan_2024_13_6_BlockNumber_1_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('AGRK_1_32.mat','-struct','Trials')
clear
clc
disp('Done! 1')

EEG = pop_loadset('AGRK_B2_ica.set');
Source = laplace(EEG);
load('Informations\Data_AGRK2_31_Jan_2024_13_30.mat')
Details = Data_AGRK2_31_Jan_2024_13_30_BlockNumber_2_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('AGRK_2_32.mat','-struct','Trials')
clear
clc
disp('Done! 2')

EEG = pop_loadset('AGRK_B3_ica.set');
Source = laplace(EEG);
load('Informations\Data_AGRK3_31_Jan_2024_13_49.mat')
Details = Data_AGRK3_31_Jan_2024_13_49_BlockNumber_3_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('AGRK_3_32.mat','-struct','Trials')
clear
clc
disp('Done! 3')

EEG = pop_loadset('AGRK_B4_ica.set');
Source = laplace(EEG);
load("Informations\Data_AGRK4_31_Jan_2024_14_12.mat")
Details = Data_AGRK4_31_Jan_2024_14_12_BlockNumber_4_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('AGRK_4_32.mat','-struct','Trials')
clear
clc
disp('Done! 4')

EEG = pop_loadset('AliK_B1_ica.set');
Source = laplace(EEG);
load("Informations\Data_AliK1_16_Jun_2024_10_4.mat")
Details = Data_AliK1_16_Jun_2024_10_4_BlockNumber_1_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('AliK_1_32.mat','-struct','Trials')
clear
clc
disp('Done! 5')

EEG = pop_loadset('AliK_B2_ica.set');
Source = laplace(EEG);
load("Informations\Data_AliK2_16_Jun_2024_10_26.mat")
Details = Data_AliK2_16_Jun_2024_10_26_BlockNumber_2_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('AliK_2_32.mat','-struct','Trials')
clear
clc
disp('Done! 6')

EEG = pop_loadset('AliK_B3_ica.set');
Source = laplace(EEG);
load("Informations\Data_AliK3_16_Jun_2024_10_48.mat")
Details = Data_AliK3_16_Jun_2024_10_48_BlockNumber_3_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('AliK_3_32.mat','-struct','Trials')
clear
clc
disp('Done! 7')

EEG = pop_loadset('AliK_B4_ica.set');
Source = laplace(EEG);
load("Informations\Data_AliK4_16_Jun_2024_11_9.mat")
Details = Data_AliK4_16_Jun_2024_11_9_BlockNumber_4_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('AliK_4_32.mat','-struct','Trials')
clear
clc
disp('Done! 8')

EEG = pop_loadset('Fara_B1_ica.set');
Source = laplace(EEG);
load("Informations\Data_Fara1_27_May_2024_13_47.mat")
Details = Data_Fara1_27_May_2024_13_47_BlockNumber_1_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('Fara_1_32.mat','-struct','Trials')
clear
clc
disp('Done! 9')

EEG = pop_loadset('Fara_B2_ica.set');
Source = laplace(EEG);
load("Informations\Data_Fara2_27_May_2024_14_13.mat")
Details = Data_Fara2_27_May_2024_14_13_BlockNumber_2_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('Fara_2_32.mat','-struct','Trials')
clear
clc
disp('Done! 10')

EEG = pop_loadset('Fara_B3_ica.set');
Source = laplace(EEG);
load("Informations\Data_Fara3_27_May_2024_14_35.mat")
Details = Data_Fara3_27_May_2024_14_35_BlockNumber_3_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('Fara_3_32.mat','-struct','Trials')
clear
clc
disp('Done! 11')

EEG = pop_loadset('Fara_B4_ica.set');
Source = laplace(EEG);
load("Informations\Data_Fara4_27_May_2024_15_0.mat")
Details = Data_Fara4_27_May_2024_15_0_BlockNumber_4_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('Fara_4_32.mat','-struct','Trials')
clear
clc
disp('Done! 12')

% EEG = pop_loadset('Kiani_B1_ica.set');
% Source = laplace(EEG);
% load("Informations\Data_Kiani1_03_Jan_2024_17_11.mat")
% Details = Data_Kiani_03_Jan_2024_17_11_BlockNumber_1_SessionNumber_1;
% EEG = epoching(EEG,Details,Source.Value,250);
% EEG = filter(EEG); 
% EEG = window(EEG,250);
% EEG = graph(EEG);
% Trials = seperation(EEG,Details);
% save('Kiani_1_32.mat','-struct','Trials')
% clear
% clc
% disp('Done! 13')
% 
% EEG = pop_loadset('Kiani_B2_ica.set');
% Source = laplace(EEG);
% load("Informations\Data_Kiani2_03_Jan_2024_17_36.mat")
% Details = Data_Kiani2_03_Jan_2024_17_36_BlockNumber_2_SessionNumber_1;
% EEG = epoching(EEG,Details,Source.Value,250);
% EEG = filter(EEG); 
% EEG = window(EEG,250);
% EEG = graph(EEG);
% Trials = seperation(EEG,Details);
% save('Kiani_2_32.mat','-struct','Trials')
% clear
% clc
% disp('Done! 14')
% 
% EEG = pop_loadset('Kiani_B3_ica.set');
% Source = laplace(EEG);
% load("Informations\Data_Kiani3_03_Jan_2024_18_3.mat")
% Details = Data_Kiani3_03_Jan_2024_18_3_BlockNumber_3_SessionNumber_1;
% EEG = epoching(EEG,Details,Source.Value,250);
% EEG = filter(EEG); 
% EEG = window(EEG,250);
% EEG = graph(EEG);
% Trials = seperation(EEG,Details);
% save('Kiani_3_32.mat','-struct','Trials')
% clear
% clc
% disp('Done! 15')
% 
% EEG = pop_loadset('Kiani_B4_ica.set');
% Source = laplace(EEG);
% load("Informations\Data_Kiani4_03_Jan_2024_18_22.mat")
% Details = Data_Kiani4_03_Jan_2024_18_22_BlockNumber_4_SessionNumber_1;
% EEG = epoching(EEG,Details,Source.Value,250);
% EEG = filter(EEG); 
% EEG = window(EEG,250);
% EEG = graph(EEG);
% Trials = seperation(EEG,Details);
% save('Kiani_4_32.mat','-struct','Trials')
% clear
% clc
% disp('Done! 16')

EEG = pop_loadset('NVRDY_B2_ica.set');
Source = laplace(EEG);
load("Informations\Data_NVRDY2_07_Feb_2024_16_7.mat")
Details = Data_NVRDY2_07_Feb_2024_16_7_BlockNumber_2_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('NVRDY_2_32.mat','-struct','Trials')
clear
clc
disp('Done! 17')

EEG = pop_loadset('NVRDY_B3_ica.set');
Source = laplace(EEG);
load("Informations\Data_NVRDY3_07_Feb_2024_16_32.mat")
Details = Data_NVRDY3_07_Feb_2024_16_32_BlockNumber_3_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('NVRDY_3_32.mat','-struct','Trials')
clear
clc
disp('Done! 18')

EEG = pop_loadset('NVRDY_B4_ica.set');
Source = laplace(EEG);
load("Informations\Data_NVRDY4_07_Feb_2024_16_55.mat")
Details = Data_NVRDY4_07_Feb_2024_16_55_BlockNumber_4_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('NVRDY_4_32.mat','-struct','Trials')
clear
clc
disp('Done! 19')

EEG = pop_loadset('PRY_B1_ica.set');
Source = laplace(EEG);
load("Informations\Data_PRY1_12_Jun_2024_16_55.mat")
Details = Data_PRY1_12_Jun_2024_16_55_BlockNumber_1_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('PRY_1_32.mat','-struct','Trials')
clear
clc
disp('Done! 20')

EEG = pop_loadset('PRY_B2_ica.set');
Source = laplace(EEG);
load("Informations\Data_PRY2_12_Jun_2024_17_19.mat")
Details = Data_PRY2_12_Jun_2024_17_19_BlockNumber_2_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('PRY_2_32.mat','-struct','Trials')
clear
clc
disp('Done! 21')

EEG = pop_loadset('PRY_B3_ica.set');
Source = laplace(EEG);
load("Informations\Data_PRY3_12_Jun_2024_17_43.mat")
Details = Data_PRY3_12_Jun_2024_17_43_BlockNumber_3_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('PRY_3_32.mat','-struct','Trials')
clear
clc
disp('Done! 22')

EEG = pop_loadset('PRY_B4_ica.set');
Source = laplace(EEG);
load("Informations\Data_PRY4_12_Jun_2024_18_5.mat")
Details = Data_PRY4_12_Jun_2024_18_5_BlockNumber_4_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('PRY_4_32.mat','-struct','Trials')
clear
clc
disp('Done! 23')

EEG = pop_loadset('PYMN_B1_ica.set');
Source = laplace(EEG);
load("Informations\Data_PYMN1_19_Jun_2024_16_47.mat")
Details = Data_PYMN1_19_Jun_2024_16_47_BlockNumber_1_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('PYMN_1_32.mat','-struct','Trials')
clear
clc
disp('Done! 24')

EEG = pop_loadset('ZHDY_B1_ica.set');
Source = laplace(EEG);
load("Informations\Data_ZHDY1_04_Feb_2024_15_3.mat")
Details = Data_ZHDY1_04_Feb_2024_15_3_BlockNumber_1_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('ZHDY_1_32.mat','-struct','Trials')
clear
clc
disp('Done! 25')

EEG = pop_loadset('ZHDY_B2_ica.set');
Source = laplace(EEG);
load("Informations\Data_ZHDY2_04_Feb_2024_15_22.mat")
Details = Data_ZHDY2_04_Feb_2024_15_22_BlockNumber_2_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('ZHDY_2_32.mat','-struct','Trials')
clear
clc
disp('Done! 26')

EEG = pop_loadset('ZHDY_B3_ica.set');
Source = laplace(EEG);
load("Informations\Data_ZHDY3_04_Feb_2024_15_50.mat")
Details = Data_ZHDY3_04_Feb_2024_15_50_BlockNumber_3_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('ZHDY_3_32.mat','-struct','Trials')
clear
clc
disp('Done! 27')

EEG = pop_loadset('ZHDY_B4_ica.set');
Source = laplace(EEG);
load("Informations\Data_ZHDY4_04_Feb_2024_16_14.mat")
Details = Data_ZHDY4_04_Feb_2024_16_14_BlockNumber_4_SessionNumber_1;
EEG = epoching(EEG,Details,Source,1000);
EEG = filter(EEG); 
EEG = window(EEG,1000);
EEG = graph(EEG);
Trials = seperation(EEG,Details);
save('ZHDY_4_32.mat','-struct','Trials')
clear
clc
disp('Done! 28')

%% Laplacian filter
function Sources = laplace(EEG)
    X = [EEG.chanlocs.X];
    Y = [EEG.chanlocs.Y];
    Z = [EEG.chanlocs.Z];
    Sources = laplacian(EEG.data,X,Y,Z,20);
end

%% Epoch extraction and baseline removing
function EEG = epoching(EEG,Details,Sources,fs)
    EEG.Trials = epochExtraction(EEG,Details,Sources,fs);
    
    EEG.Trials.channelNames = {'FP1','FP2','F7','F3','FZ','F4','F8','FT7','FC3','FCZ','FC4','FT8','T7'...
        'C3','CZ','C4','T8','TP7','CP3','CPZ','CP4','TP8','P7','P3','PZ','P4','P8','O2','OZ','O1'};
    
    % Baseline removing
    EEG.Trials.epochs = baselineRemover(EEG.Trials.epochs,EEG.Trials.number,1,400,fs);
end

%% Filtering
function EEG = filter(EEG)
    fs = 1000;
    filter_order = 6;
    % EEG.Trials.epochs_delta = bandFilter(EEG.Trials.epochs,0.5,4,filter_order,fs);
    % EEG.Trials.epochs_theta = bandFilter(EEG.Trials.epochs,4,8,filter_order,fs);
    % EEG.Trials.epochs_alpha = bandFilter(EEG.Trials.epochs,8,13,filter_order,fs);
    EEG.Trials.epochs_beta = bandFilter(EEG.Trials.epochs,13,30,filter_order,fs);
    EEG.Trials.epochs_lowGamma = bandFilter(EEG.Trials.epochs,30,45,filter_order,fs);
    % EEG.Trials.epochs_highGamma = bandFilter(EEG.Trials.epochs,45,60,filter_order,fs);
end

%% Window extraction
function EEG = window(EEG,fs)
    w_size = 400;
    % EEG.Trials.Windows = windowExtraction(EEG.Trials.epochs,w_size,EEG.Trials.blobs,EEG.Trials.durations,EEG.Trials.number,fs);
    % EEG.Trials.Windows_delta = windowExtraction(EEG.Trials.epochs_delta,w_size,EEG.Trials.blobs,EEG.Trials.durations,EEG.Trials.number,fs);
    % EEG.Trials.Windows_theta = windowExtraction(EEG.Trials.epochs_theta,w_size,EEG.Trials.blobs,EEG.Trials.durations,EEG.Trials.number,fs);
    % EEG.Trials.Windows_alpha = windowExtraction(EEG.Trials.epochs_alpha,w_size,EEG.Trials.blobs,EEG.Trials.durations,EEG.Trials.number,fs);
    EEG.Trials.Windows_beta = windowExtraction(EEG.Trials.epochs_beta,w_size,EEG.Trials.blobs,EEG.Trials.durations,EEG.Trials.number,fs);
    EEG.Trials.Windows_lowGamma = windowExtraction(EEG.Trials.epochs_lowGamma,w_size,EEG.Trials.blobs,EEG.Trials.durations,EEG.Trials.number,fs);
    % EEG.Trials.Windows_highGamma = windowExtraction(EEG.Trials.epochs_highGamma,200,EEG.Trials.blobs,EEG.Trials.durations,EEG.Trials.number,fs);
end

%% Grapgh of connectivity extraction
function EEG = graph(EEG)
    method = 1;
    % Forward windows
    % EEG.Trials.Windows.forwardGraphs = connectionGraph(EEG.Trials.Windows.forwardWindows,method);
    % EEG.Trials.Windows_delta.forwardGraphs = connectionGraph(EEG.Trials.Windows_delta.forwardWindows,method);
    % EEG.Trials.Windows_theta.forwardGraphs = connectionGraph(EEG.Trials.Windows_theta.forwardWindows,method);
    % EEG.Trials.Windows_alpha.forwardGraphs = connectionGraph(EEG.Trials.Windows_alpha.forwardWindows,method);
    EEG.Trials.Windows_beta.forwardGraphs = connectionGraph(EEG.Trials.Windows_beta.forwardWindows,method);
    EEG.Trials.Windows_lowGamma.forwardGraphs = connectionGraph(EEG.Trials.Windows_lowGamma.forwardWindows,method);
    % EEG.Trials.Windows_highGamma.forwardGraphs = connectionGraph(EEG.Trials.Windows_highGamma.forwardWindows,method);
    
    % Backward windows
    % EEG.Trials.Windows.backwardGraphs = connectionGraph(EEG.Trials.Windows.backwardWindows,method);
    % EEG.Trials.Windows_delta.backwardGraphs = connectionGraph(EEG.Trials.Windows_delta.backwardWindows,method);
    % EEG.Trials.Windows_theta.backwardGraphs = connectionGraph(EEG.Trials.Windows_theta.backwardWindows,method);
    % EEG.Trials.Windows_alpha.backwardGraphs = connectionGraph(EEG.Trials.Windows_alpha.backwardWindows,method);
    EEG.Trials.Windows_beta.backwardGraphs = connectionGraph(EEG.Trials.Windows_beta.backwardWindows,method);
    EEG.Trials.Windows_lowGamma.backwardGraphs = connectionGraph(EEG.Trials.Windows_lowGamma.backwardWindows,method);
    % EEG.Trials.Windows_highGamma.backwardGraphs = connectionGraph(EEG.Trials.Windows_highGamma.backwardWindows,method);
end

%% Seperating graphs from big data
function Graphs = seperation(EEG,Details)
    % Graphs.Windows = EEG.Trials.Windows;
    % Graphs.Windows_delta = EEG.Trials.Windows_delta;
    % Graphs.Windows_theta = EEG.Trials.Windows_theta;
    % Graphs.Windows_alpha = EEG.Trials.Windows_alpha;
    Graphs.Windows_beta = EEG.Trials.Windows_beta;
    Graphs.Windows_lowGamma = EEG.Trials.Windows_lowGamma;

    fieldsToRemove = {'forwardWindows', 'backwardWindows'};
    % Graphs.Windows = rmfield(Graphs.Windows, fieldsToRemove);
    % Graphs.Windows_delta = rmfield(Graphs.Windows_delta, fieldsToRemove);
    % Graphs.Windows_theta = rmfield(Graphs.Windows_theta, fieldsToRemove);
    % Graphs.Windows_alpha = rmfield(Graphs.Windows_alpha, fieldsToRemove);
    Graphs.Windows_beta = rmfield(Graphs.Windows_beta, fieldsToRemove);
    Graphs.Windows_lowGamma = rmfield(Graphs.Windows_lowGamma, fieldsToRemove);
    
    % Defining labels
    Graphs.butterfly = Details.labels(:,1);
    Graphs.difficulty = Details.labels(:,2);
    Graphs.butterflyImage = Details.labels(:,4);
    Graphs.isFixedDuration = Details.labels(:,5);
    
    % Other usefull details
    Graphs.blobs = Details.frameNum.';
    Graphs.accuracies = Details.Accuracy.';
    Graphs.butterflyResponses = Details.Finaal_Response.';
    Graphs.confidences = Details.Final_Confidence.';
    Graphs.blobDuration = Details.Frame_Duration;
    Graphs.responseDeltas = EEG.Trials.responseDeltas;
end
