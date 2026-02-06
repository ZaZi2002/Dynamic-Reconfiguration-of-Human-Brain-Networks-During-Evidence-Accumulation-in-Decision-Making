clc
clear

% Loading graphs
Graphs_forward_3 = load('Graphs_forward_3_subject.mat');
Graphs_forward_4 = load('Graphs_forward_4_subject.mat');
Graphs_forward_5 = load('Graphs_forward_5_subject.mat');
Graphs_forward_6 = load('Graphs_forward_6_subject.mat');
Graphs_forward_7 = load('Graphs_forward_7_subject.mat');
Graphs_forward_8 = load('Graphs_forward_8_subject.mat');
Graphs_forward_9 = load('Graphs_forward_9_subject.mat');

% Graph_response = load('Graphs_response_subject.mat');
% Graph_firstBlob = load('Graphs_firstBlob_subject.mat');

source_names = load('Sources_names.mat');

% Feature extraction
C = 0.3;
for i = 1:16
    if i ~= 4
        features_3(i) = features_extraction(Graphs_forward_3.Graphs_3(i),C);
        features_4(i) = features_extraction(Graphs_forward_4.Graphs_4(i),C);
        features_5(i) = features_extraction(Graphs_forward_5.Graphs_5(i),C);
        features_6(i) = features_extraction(Graphs_forward_6.Graphs_6(i),C);
        features_7(i) = features_extraction(Graphs_forward_7.Graphs_7(i),C);
        features_8(i) = features_extraction(Graphs_forward_8.Graphs_8(i),C);
        features_9(i) = features_extraction(Graphs_forward_9.Graphs_9(i),C);
    end
    disp('Done subject ' + string(i));
end

%% Response & firstBlob based on blocks
Graph_response = load('Graphs_response_blocks.mat');
Graph_firstBlob = load('Graphs_firstBlob_blocks.mat');
for i = 1:60
    if i < 13 || i > 16
        features_response(i) = features_extraction(Graph_response.Graphs_response(i),C);
        features_firstBlob(i) = features_extraction(Graph_firstBlob.Graphs_firstBlob(i),C);
        disp('Done subject ' + string(i));
    end
end

%% LowConf & highConf based on blocks
clc
C = 0.1;
Graph_highConf = load('Graphs_highConf_blocks.mat');
Graph_lowConf = load('Graphs_lowConf_blocks.mat');
for i = 1:60
    if i < 13 || i > 16
        features_lowConf(i) = features_extraction(Graph_lowConf.Graphs_lowConf(i),C);
        features_highConf(i) = features_extraction(Graph_highConf.Graphs_highConf(i),C);
        disp('Done subject ' + string(i));
    end
end

%% LowConf & highConf based all
clc
C = 0.1;
Graph_highConf = load('Graphs_highConf_all.mat');
Graph_lowConf = load('Graphs_lowConf_all.mat');

features_lowConf_all = features_extraction(Graph_lowConf.Graphs_lowConf,C);
features_highConf_all = features_extraction(Graph_highConf.Graphs_highConf,C);

graph_low.beta = features_lowConf_all.Graphs.beta;
graph_low.lowGamma = features_lowConf_all.Graphs.lowGamma;

graph_high.beta = features_highConf_all.Graphs.beta;
graph_high.lowGamma = features_highConf_all.Graphs.lowGamma;

%% LowConf & highConf mean
features_low = features_lowConf;
features_high = features_highConf;

graph_low = {};
graph_low.beta = features_low(1).Graphs.beta;
graph_low.lowGamma = features_low(1).Graphs.lowGamma;

graph_high = {};
graph_high.beta = features_high(1).Graphs.beta;
graph_high.lowGamma = features_high(1).Graphs.lowGamma;

counter = 0;
for i = 2:size(features_low,2)
    if i < 13 || i > 16
        graph_low.beta = graph_low.beta + features_low(i).Graphs.beta;
        graph_low.lowGamma = graph_low.lowGamma + features_low(i).Graphs.lowGamma;
        graph_high.beta = graph_high.beta + features_high(i).Graphs.beta;
        graph_high.lowGamma = graph_high.lowGamma + features_high(i).Graphs.lowGamma;
        counter = counter + 1;
    end
end
graph_low.beta = graph_low.beta / counter;
graph_low.lowGamma = graph_low.lowGamma / counter;
graph_high.beta = graph_high.beta / counter;
graph_high.lowGamma = graph_high.lowGamma / counter;

features_lowConf_all = features_extraction(graph_low,C);
features_highConf_all = features_extraction(graph_high,C);

%%
Graph_response_all = load('Graphs_response.mat');
Graph_firstBlob_all = load('Graphs_firstBlob.mat');
features_response_all = features_extraction(Graph_response_all,C);
features_firstBlob_all = features_extraction(Graph_firstBlob_all,C);

%% Dynamic based on confidence
% Loading graphs
Graphs_forward_3 = load('Graphs_forward_3_lowConf.mat');
Graphs_forward_4 = load('Graphs_forward_4_lowConf.mat');
Graphs_forward_5 = load('Graphs_forward_5_lowConf.mat');
Graphs_forward_6 = load('Graphs_forward_6_lowConf.mat');
Graphs_forward_7 = load('Graphs_forward_7_lowConf.mat');
Graphs_forward_8 = load('Graphs_forward_8_lowConf.mat');
Graphs_forward_9 = load('Graphs_forward_9_lowConf.mat');
Graphs_forward_10 = load('Graphs_forward_10_lowConf.mat');
Graphs_forward_11 = load('Graphs_forward_11_lowConf.mat');
Graphs_forward_12 = load('Graphs_forward_12_lowConf.mat');
Graphs_forward_13 = load('Graphs_forward_13_lowConf.mat');
Graphs_forward_14 = load('Graphs_forward_14_lowConf.mat');
Graphs_forward_15 = load('Graphs_forward_15_lowConf.mat');
Graphs_forward_16 = load('Graphs_forward_16_lowConf.mat');
Graphs_forward_17 = load('Graphs_forward_17_lowConf.mat');

% Graph_response = load('Graphs_response_subject.mat');
% Graph_firstBlob = load('Graphs_firstBlob_subject.mat');

source_names = load('Sources_names.mat');

% Feature extraction
C = 0.2;
for i = 1:12
    if i ~= 4
        features_3_lowConf(i) = features_extraction(Graphs_forward_3.Graphs_3(i),C);
        features_4_lowConf(i) = features_extraction(Graphs_forward_4.Graphs_4(i),C);
        features_5_lowConf(i) = features_extraction(Graphs_forward_5.Graphs_5(i),C);
        features_6_lowConf(i) = features_extraction(Graphs_forward_6.Graphs_6(i),C);
        features_7_lowConf(i) = features_extraction(Graphs_forward_7.Graphs_7(i),C);
        features_8_lowConf(i) = features_extraction(Graphs_forward_8.Graphs_8(i),C);
        features_9_lowConf(i) = features_extraction(Graphs_forward_9.Graphs_9(i),C);
        features_10_lowConf(i) = features_extraction(Graphs_forward_10.Graphs_10(i),C);
        features_11_lowConf(i) = features_extraction(Graphs_forward_11.Graphs_11(i),C);
        features_12_lowConf(i) = features_extraction(Graphs_forward_12.Graphs_12(i),C);
        features_13_lowConf(i) = features_extraction(Graphs_forward_13.Graphs_13(i),C);
        features_14_lowConf(i) = features_extraction(Graphs_forward_14.Graphs_14(i),C);
        features_15_lowConf(i) = features_extraction(Graphs_forward_15.Graphs_15(i),C);
        features_16_lowConf(i) = features_extraction(Graphs_forward_16.Graphs_16(i),C);
        features_17_lowConf(i) = features_extraction(Graphs_forward_17.Graphs_17(i),C);
    end
    disp('Done subject ' + string(i));
end


% Loading graphs
Graphs_forward_3 = load('Graphs_forward_3_highConf.mat');
Graphs_forward_4 = load('Graphs_forward_4_highConf.mat');
Graphs_forward_5 = load('Graphs_forward_5_highConf.mat');
Graphs_forward_6 = load('Graphs_forward_6_highConf.mat');
Graphs_forward_7 = load('Graphs_forward_7_highConf.mat');
Graphs_forward_8 = load('Graphs_forward_8_highConf.mat');
Graphs_forward_9 = load('Graphs_forward_9_highConf.mat');
Graphs_forward_10 = load('Graphs_forward_10_highConf.mat');
Graphs_forward_11 = load('Graphs_forward_11_highConf.mat');
Graphs_forward_12 = load('Graphs_forward_12_highConf.mat');
Graphs_forward_13 = load('Graphs_forward_13_highConf.mat');
Graphs_forward_14 = load('Graphs_forward_14_highConf.mat');
Graphs_forward_15 = load('Graphs_forward_15_highConf.mat');
Graphs_forward_16 = load('Graphs_forward_16_highConf.mat');
Graphs_forward_17 = load('Graphs_forward_17_highConf.mat');

% Graph_response = load('Graphs_response_subject.mat');
% Graph_firstBlob = load('Graphs_firstBlob_subject.mat');

source_names = load('Sources_names.mat');

% Feature extraction
C = 0.2;
for i = 1:12
    if i ~= 4
        features_3_highConf(i) = features_extraction(Graphs_forward_3.Graphs_3(i),C);
        features_4_highConf(i) = features_extraction(Graphs_forward_4.Graphs_4(i),C);
        features_5_highConf(i) = features_extraction(Graphs_forward_5.Graphs_5(i),C);
        features_6_highConf(i) = features_extraction(Graphs_forward_6.Graphs_6(i),C);
        features_7_highConf(i) = features_extraction(Graphs_forward_7.Graphs_7(i),C);
        features_8_highConf(i) = features_extraction(Graphs_forward_8.Graphs_8(i),C);
        features_9_highConf(i) = features_extraction(Graphs_forward_9.Graphs_9(i),C);
        features_10_highConf(i) = features_extraction(Graphs_forward_10.Graphs_10(i),C);
        features_11_highConf(i) = features_extraction(Graphs_forward_11.Graphs_11(i),C);
        features_12_highConf(i) = features_extraction(Graphs_forward_12.Graphs_12(i),C);
        features_13_highConf(i) = features_extraction(Graphs_forward_13.Graphs_13(i),C);
        features_14_highConf(i) = features_extraction(Graphs_forward_14.Graphs_14(i),C);
        features_15_highConf(i) = features_extraction(Graphs_forward_15.Graphs_15(i),C);
        features_16_highConf(i) = features_extraction(Graphs_forward_16.Graphs_16(i),C);
        features_17_highConf(i) = features_extraction(Graphs_forward_17.Graphs_17(i),C);
    end
    disp('Done subject ' + string(i));
end

%% Saving features
save('Features_3.mat','features_3');
save('Features_4.mat','features_4');
save('Features_5.mat','features_5');
save('Features_6.mat','features_6');
save('Features_7.mat','features_7');
save('Features_8.mat','features_8');
save('Features_9.mat','features_9');
save('Features_response.mat','features_response');
save('Features_firstBlob.mat','features_firstBlob');
%%
save('Features_lowConf.mat','features_lowConf');
save('Features_highConf.mat','features_highConf');
save('features_lowConf_all.mat','features_lowConf_all');
save('features_highConf_all.mat','features_highConf_all');
 
%% Plotting Main graphs
clc
source_names = load('Sources_names.mat');
pause_time = 1;
begin_window = 1;

features = features_highConf_all;
Graphs = graph_high;

features = features_lowConf_all;
Graphs = graph_low;

figure;
for t = begin_window:size(Graphs.beta,1)
    plotConnectivity(features.reordered_graphs.lowGamma(t,:,:),source_names.Label ...
        (features.reordered_sources.lowGamma(:,t)),0,t,0,string(features.mod_number.lowGamma(t)));
    pause(pause_time);
end

figure;
for t = begin_window:size(Graphs.beta,1)
    plotConnectivity(features.reordered_graphs.beta(t,:,:),source_names.Label ...
        (features.reordered_sources.beta(:,t)),0,t,0,string(features.mod_number.beta(t)));
    pause(pause_time);
end

%% Plotting Static graphs
clc
close all
C = 0.13;
Graph_highConf = load('Graphs_highConf_all.mat');
Graph_lowConf = load('Graphs_lowConf_all.mat');

features_lowConf_all = features_extraction(Graph_lowConf.Graphs_lowConf,C);
features_highConf_all = features_extraction(Graph_highConf.Graphs_highConf,C);
%%
graph_low.beta = features_lowConf_all.Graphs.beta;
graph_low.lowGamma = features_lowConf_all.Graphs.lowGamma;

graph_high.beta = features_highConf_all.Graphs.beta;
graph_high.lowGamma = features_highConf_all.Graphs.lowGamma;

source_names = load('Sources_names.mat');

features = features_highConf_all;
Graphs = graph_high;
 % figure;
 % plotConnectivity(features.reordered_graphs_final.lowGamma,source_names.Label ...
 %     (features.reordered_sources_final.lowGamma),0,1,0,string(features.mod_number_final.lowGamma));
figure;
plotConnectivity(features.reordered_graphs_final.beta,source_names.Label ...
    (features.reordered_sources_final.beta),0,1,0,string(features.mod_number_final.beta));

features = features_lowConf_all;
Graphs = graph_low;
 % figure;
 % plotConnectivity(features.reordered_graphs_final.lowGamma,source_names.Label ...
 %     (features.reordered_sources_final.lowGamma),0,1,0,string(features.mod_number_final.lowGamma));
figure;
plotConnectivity(features.reordered_graphs_final.beta,source_names.Label ...
    (features.reordered_sources_final.beta),0,1,0,string(features.mod_number_final.beta));
%%
save('Features_lowConf.mat','features_lowConf_all');
save('Features_highConf.mat','features_highConf_all');

%% Plotting graphs
features = features_5(1);
Graphs = Graphs_forward_5.Graphs_5(1);
%pause_time = 1;
begin_window = 1;
for t = begin_window:size(Graphs.beta,1)
    figure;
    plotConnectivity(features.reordered_graphs.beta(t,:,:),source_names.Label ...
        (features.reordered_sources.beta(:,t)),0,t,0,string(features.mod_number.beta(t)));
    pause(pause_time);
end

%% Plotting Null graphs
pause_time = 4;
for t = begin_window:size(Graphs.all,1)
    plotConnectivity(features.Null_reordered_graphs.beta(t,:,:),source_names.Label ...
        (features.Null_reordered_sources.beta(:,t)),0,t,0,string(features.Null_mod_number.beta(t)));
    pause(pause_time);
end

%% Plot number of modules
figure;
plot(features.Q.lowGamma(begin_window:end));
hold on
plot(features.Null_Q.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> modularity')
xlabel('window')
ylabel('modularity index')
legend('Main','Null');
grid on

figure;
plot(features.mod_number.lowGamma(begin_window:end));
hold on
plot(features.Null_mod_number.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> number of modules')
xlabel('window')
ylabel('number of modules')
legend('Main','Null');
grid on

%% T-Test
clc
% Perform one-sample t-tests
[~, p_modularity] = ttest(features.Null_Q.lowGamma, features.Q.lowGamma);
[~, p_num_modules] = ttest(features.Null_mod_number.lowGamma, features.mod_number.lowGamma);
[~, p_mean_degree] = ttest(features.Null_degree_mean.lowGamma, features.degree_mean.lowGamma);
[~, p_character_pl] = ttest(features.Null_char_pl.lowGamma, features.char_pl.lowGamma);
[~, p_num_triangles] = ttest(features.Null_num_triangles.lowGamma, features.num_triangles.lowGamma);
[~, p_efficiency] = ttest(features.Null_efficiency.lowGamma, features.efficiency.lowGamma);
[~, p_global_efiic] = ttest(features.Null_global_effic.lowGamma, features.global_effic.lowGamma);
[~, p_radius] = ttest(features.Null_radius.lowGamma, features.radius.lowGamma);
[~, p_diam] = ttest(features.Null_diameter.lowGamma, features.diameter.lowGamma);
[~, p_transitivity] = ttest(features.Null_transitivity.lowGamma, features.transitivity.lowGamma);
[~, p_clustering_coef] = ttest(features.Null_clustering_coef.lowGamma, features.clustering_coef.lowGamma);
[~, p_betweennes] = ttest(features.Null_betweenness.lowGamma, features.betweenness.lowGamma);
[~, p_closeness] = ttest(features.Null_closeness.lowGamma, features.closeness.lowGamma);
p_modularity
p_num_modules
p_mean_degree
p_character_pl
p_num_triangles
p_efficiency
p_global_efiic
p_radius
p_diam
p_transitivity
p_clustering_coef
p_betweennes
p_closeness

%% Mean degree
figure;
plot(features.degree_mean.lowGamma(begin_window:end));
hold on
plot(features.Null_degree_mean.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> average degree')
xlabel('window')
ylabel('average degree')
legend('Main','Null');
grid on

%% Characteristic path length
figure;
plot(features.char_pl.lowGamma(begin_window:end));
hold on
plot(features.Null_char_pl.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> characteristic path length')
xlabel('window')
ylabel('shortest path length')
legend('Main','Null');
grid on

%% Number of triangles
figure;
plot(features.num_triangles.lowGamma(begin_window:end));
hold on
plot(features.Null_num_triangles.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> number of triangles')
xlabel('window')
ylabel('number of triangles')
legend('Main','Null');
grid on

%% Efficiency
figure;
plot(features.efficiency.lowGamma(begin_window:end));
hold on
plot(features.Null_efficiency.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> efficiency')
xlabel('window')
ylabel('efficiency')
legend('Main','Null');
grid on

%% Radius
figure;
plot(features.radius.lowGamma(begin_window:end));
hold on
plot(features.Null_radius.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> radius')
xlabel('window')
ylabel('radius')
legend('Main','Null');
grid on

%% Diameter
figure;
plot(features.diameter.lowGamma(begin_window:end));
hold on
plot(features.Null_diameter.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> diameter')
xlabel('window')
ylabel('diameter')
legend('Main','Null');
grid on

%% Global efficiency
figure;
plot(features.global_effic.lowGamma(begin_window:end));
hold on
plot(features.Null_global_effic.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> global efficiency')
xlabel('window')
ylabel('global efficiency')
legend('Main','Null');
grid on

%% Local efficiency
figure;
plot(features.local_effic.lowGamma(begin_window:end,1));
hold on
plot(features.Null_local_effic.lowGamma(begin_window:end,1));
title('Main graphs vs Null graphs -> local efficiency')
xlabel('window')
ylabel('local efficiency')
legend('Main','Null');
grid on

%% Transitivity
figure;
plot(features.transitivity.lowGamma(begin_window:end));
hold on
plot(features.Null_transitivity.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> transitivity')
xlabel('window')
ylabel('transitivity')
legend('Main','Null');
grid on

%% Clustering coef
figure;
plot(features.clustering_coef.lowGamma(begin_window:end));
hold on
plot(features.Null_clustering_coef.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> clustering coef')
xlabel('window')
ylabel('clustering coef')
legend('Main','Null');
grid on

%% Betweenness
figure;
plot(features.betweenness.lowGamma(begin_window:end));
hold on
plot(features.Null_betweenness.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> betweenness')
xlabel('window')
ylabel('betweenness')
legend('Main','Null');
grid on

%% Closeness
figure;
plot(features.closeness.lowGamma(begin_window:end));
hold on
plot(features.Null_closeness.lowGamma(begin_window:end));
title('Main graphs vs Null graphs -> closeness')
xlabel('window')
ylabel('closeness')
legend('Main','Null');
grid on

%% Small-worldness
figure;
plot(features.small_world.lowGamma(begin_window:end));
title('Main graphs -> small-worldness')
xlabel('window')
ylabel('small-worldness')
grid on

%% Flexibility
figure;
plot(features.flexibility_modules.lowGamma);
title('Main graphs -> flexibility of modules')
xlabel('window')
ylabel('flexibility')
grid on

%% Integrarion
figure;
plot(features.integration_modules.lowGamma);
title('Main graphs -> integration of modules')
xlabel('window')
ylabel('integration')
grid on