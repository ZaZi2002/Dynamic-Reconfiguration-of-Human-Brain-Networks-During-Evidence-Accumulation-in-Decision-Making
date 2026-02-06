%% Calculating mean graphs of response and first blob locked windows
clc

[Graphs_lowConf,Graphs_highConf] = start_end();

save('Graphs_lowConf_all.mat','Graphs_lowConf');
save('Graphs_highConf_all.mat','Graphs_highConf');

function [Graphs_lowConf,Graphs_highConf] = start_end()

block_counter = 0;

Graphs_lowConf = {};
Graphs_lowConf.beta = 0;
Graphs_lowConf.lowGamma = 0;

Graphs_highConf = {};
Graphs_highConf.beta = 0;
Graphs_highConf.lowGamma = 0;


    EEG = load('AGRK_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 1!')


    EEG = load('AGRK_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 2!')


    EEG = load('AGRK_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 3!')

    
    EEG = load('AGRK_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 4!')


    EEG = load('AliK_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 5!')

    
    EEG = load('AliK_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 6!')

    
    EEG = load('AliK_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 7!')

    
    EEG = load('AliK_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 8!')


    EEG = load('Fara_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 9!')

    
    EEG = load('Fara_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 10!')

    
    EEG = load('Fara_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 11!')

    
    EEG = load('Fara_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 12!')


    % EEG = load('Kiani_1.mat');
    % [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    % Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    % Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    % block_counter = block_counter + 1;
    % disp('Done 13!')
    % 
    % 
    % EEG = load('Kiani_2.mat');
    % [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    % Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    % Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    % block_counter = block_counter + 1;
    % disp('Done 14!')
    % 
    % 
    % EEG = load('Kiani_3.mat');
    % [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    % Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    % Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    % block_counter = block_counter + 1;
    % disp('Done 15!')
    % 
    % 
    % EEG = load('Kiani_4.mat');
    % [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    % Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    % Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    % block_counter = block_counter + 1;
    % disp('Done 16!')


    EEG = load('PYMN_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 17!')

    
    EEG = load('NVRDY_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 18!')

    
    EEG = load('NVRDY_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 19!')

    
    EEG = load('NVRDY_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 20!')


    EEG = load('PRY_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 21!')

    
    EEG = load('PRY_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 22!')

    
    EEG = load('PRY_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 23!')

    
    EEG = load('PRY_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 24!')


    EEG = load('ZHDY_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 25!')

    
    EEG = load('ZHDY_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 26!')

    
    EEG = load('ZHDY_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 27!')

    
    EEG = load('ZHDY_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 28!')


    EEG = load('AAli_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 29!')


    EEG = load('AAli_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 30!')

    
    EEG = load('AAli_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 31!')


    EEG = load('AAli_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 31!')

    
    EEG = load('Amiri_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 33!')

    
    EEG = load('Amiri_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 34!')

    
    EEG = load('Amiri_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 35!')


    EEG = load('MMDD_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 36!')

    
    EEG = load('MMDD_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 37!')

    
    EEG = load('MMDD_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 38!')

    
    EEG = load('MMDD_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 39!')


    EEG = load('Suda_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 40!')

    
    EEG = load('Suda_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 41!')

    
    EEG = load('Suda_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 42!')

    
    EEG = load('Suda_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 43!')


    EEG = load('Par_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 44!')

    
    EEG = load('Par_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 45!')

    
    EEG = load('Par_5.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 46!')

    
    EEG = load('HDNY_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 47!')


    EEG = load('HDNY_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 48!')


    EEG = load('HDNY_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 49!')


    EEG = load('Atefe_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 50!')


    EEG = load('Atefe_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 51!')


    EEG = load('Atefe_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 52!')


    EEG = load('Atefe_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 53!')


    EEG = load('MMDD2_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 54!')


    EEG = load('MMDD2_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 55!')


    EEG = load('MMDD2_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 56!')


    EEG = load('MMDD2_4.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 57!')


    EEG = load('Shervin_1.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 58!')


    EEG = load('Shervin_2.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 59!')


    EEG = load('Shervin_3.mat');
    [lowConf_graphs,highConf_graphs] = Conf_locked(EEG);
    Graphs_lowConf = sum_graphs(lowConf_graphs,Graphs_lowConf);
    Graphs_highConf = sum_graphs(highConf_graphs,Graphs_highConf);
    block_counter = block_counter + 1;
    disp('Done 60!')


% Mean of graphs
Graphs_lowConf.beta = Graphs_lowConf.beta / block_counter;
Graphs_lowConf.lowGamma = Graphs_lowConf.lowGamma / block_counter;
Graphs_highConf.beta = Graphs_highConf.beta / block_counter;
Graphs_highConf.lowGamma = Graphs_highConf.lowGamma / block_counter;

% Confidence locked graphs
function [lowConf_graphs,highConf_graphs] = Conf_locked(EEG)
    thresh = 0.7;

    num_sources = 68;
    num_window = 1;
    low_beta = zeros(num_window,num_sources,num_sources);
    low_lowGamma = zeros(num_window,num_sources,num_sources);
    high_beta = zeros(num_window,num_sources,num_sources);
    high_lowGamma = zeros(num_window,num_sources,num_sources);
    counter_h = 0;
    counter_l = 0;

    EEG.confidences(isnan(EEG.confidences)) = 0;
    minValue = min(EEG.confidences);
    maxValue = max(EEG.confidences);
    EEG.confidences = (EEG.confidences - minValue) / (maxValue - minValue);
    % figure;
    % histogram(EEG.confidences)

    for i = 1:size(EEG.Windows_beta.number_Window_Trial_backward,1)
        if EEG.isFixedDuration(EEG.Windows_beta.backwindowTrials(i)) ~= 1 && EEG.Windows_beta.number_Window_Trial_backward(i) <= num_window
            if (EEG.confidences(EEG.Windows_beta.backwindowTrials(i)) < thresh)
                low_beta(EEG.Windows_beta.number_Window_Trial_backward(i),:,:) = low_beta(EEG.Windows_beta.number_Window_Trial_backward(i),:,:) + EEG.Windows_beta.backwardGraphs(i,:,:);
                low_lowGamma(EEG.Windows_lowGamma.number_Window_Trial_backward(i),:,:) = low_lowGamma(EEG.Windows_lowGamma.number_Window_Trial_backward(i),:,:) + EEG.Windows_lowGamma.backwardGraphs(i,:,:);
                counter_l = counter_l + 1;
            end
            if (EEG.confidences(EEG.Windows_beta.backwindowTrials(i)) >= thresh)
                high_beta(EEG.Windows_beta.number_Window_Trial_backward(i),:,:) = high_beta(EEG.Windows_beta.number_Window_Trial_backward(i),:,:) + EEG.Windows_beta.backwardGraphs(i,:,:);
                high_lowGamma(EEG.Windows_lowGamma.number_Window_Trial_backward(i),:,:) = high_lowGamma(EEG.Windows_lowGamma.number_Window_Trial_backward(i),:,:) + EEG.Windows_lowGamma.backwardGraphs(i,:,:);
                counter_h = counter_h + 1;
            end
        end
    end
    lowConf_graphs.beta = low_beta / counter_l;
    lowConf_graphs.lowGamma = low_lowGamma / counter_l;
    highConf_graphs.beta = high_beta / counter_h;
    highConf_graphs.lowGamma = high_lowGamma / counter_h;
    disp(counter_h)
    disp(counter_l)
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