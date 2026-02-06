% Plottings based on blob
clc

%% Blob based plots integ
num_blobs = 2;
integ_network = zeros(num_blobs,1);
for i = 1:56
    if i >= 13
        integ_network(1,i) = mean(features_lowConf(i+4).integration_network.beta);
        integ_network(2,i) = mean(features_highConf(i+4).integration_network.beta);
    else
        integ_network(1,i) = mean(features_lowConf(i).integration_network.beta);
        integ_network(2,i) = mean(features_highConf(i).integration_network.beta);
    end
end
plotter(integ_network(1,:),integ_network(2,:),'integration based on blobs beta' ...
    ,'integration of network')
%%
for i = 1:56
    if i >= 13
        integ_network(1,i) = mean(features_lowConf(i+4).integration_network.lowGamma);
        integ_network(2,i) = mean(features_highConf(i+4).integration_network.lowGamma);
    else
        integ_network(1,i) = mean(features_lowConf(i).integration_network.lowGamma);
        integ_network(2,i) = mean(features_highConf(i).integration_network.lowGamma);
    end
end
plotter(integ_network(1,:),integ_network(2,:),'integration based on blobs gamma' ...
    ,'integration of network')

%% Blob based plots clustering coef
num_blobs = 2;
clust_coef = zeros(num_blobs,1);
for i = 1:56
    if i >= 13
        clust_coef(1,i) = mean(features_lowConf(i+4).clustering_coef.beta);
        clust_coef(2,i) = mean(features_highConf(i+4).clustering_coef.beta);
    else
        clust_coef(1,i) = mean(features_lowConf(i).clustering_coef.beta);
        clust_coef(2,i) = mean(features_highConf(i).clustering_coef.beta);
    end
end
plotter(clust_coef(1,:),clust_coef(2,:),'clustering coef based on blobs beta' ...
    ,'clustering coef of network')
%%
for i = 1:56
    if i >= 13
        clust_coef(1,i) = mean(features_lowConf(i+4).clustering_coef.lowGamma);
        clust_coef(2,i) = mean(features_highConf(i+4).clustering_coef.lowGamma);
    else
        clust_coef(1,i) = mean(features_lowConf(i).clustering_coef.lowGamma);
        clust_coef(2,i) = mean(features_highConf(i).clustering_coef.lowGamma);
    end
end
plotter(clust_coef(1,:),clust_coef(2,:),'clustering coef based on blobs gamma' ...
    ,'clustering coef of network')

%% Blob based plots global efficiency
num_blobs = 2;
global_effic = zeros(num_blobs,1);
for i = 1:56
    if i >= 13
        global_effic(1,i) = mean(features_lowConf(i+4).global_effic.beta);
        global_effic(2,i) = mean(features_highConf(i+4).global_effic.beta);
    else
        global_effic(1,i) = mean(features_lowConf(i).global_effic.beta);
        global_effic(2,i) = mean(features_highConf(i).global_effic.beta);
    end
end
plotter(global_effic(1,:),global_effic(2,:),'global effic based on blobs beta' ...
    ,'global effic of network')
%%
for i = 1:56
    if i >= 13 
        global_effic(1,i) = mean(features_lowConf(i+4).global_effic.lowGamma);
        global_effic(2,i) = mean(features_highConf(i+4).global_effic.lowGamma);
    else
        global_effic(1,i) = mean(features_lowConf(i).global_effic.lowGamma);
        global_effic(2,i) = mean(features_highConf(i).global_effic.lowGamma);
    end
end
plotter(global_effic(1,:),global_effic(2,:),'global effic based on blobs gamma' ...
    ,'global effic of network')

%% Blob based plots characteristic path length
num_blobs = 2;
char_pl = zeros(num_blobs,1);
for i = 1:56
    if i >= 13
        char_pl(1,i) = mean(features_lowConf(i+4).char_pl.beta);
        char_pl(2,i) = mean(features_highConf(i+4).char_pl.beta);
    else
        char_pl(1,i) = mean(features_lowConf(i).char_pl.beta);
        char_pl(2,i) = mean(features_highConf(i).char_pl.beta);
    end
end
plotter(char_pl(1,:),char_pl(2,:),'char pl based on blobs beta' ...
    ,'char pl of network')
%%
for i = 1:56
    if i >= 13 
        char_pl(1,i) = mean(features_lowConf(i+4).char_pl.lowGamma);
        char_pl(2,i) = mean(features_highConf(i+4).char_pl.lowGamma);
    else
        char_pl(1,i) = mean(features_lowConf(i).char_pl.lowGamma);
        char_pl(2,i) = mean(features_highConf(i).char_pl.lowGamma);
    end
end
plotter(char_pl(1,:),char_pl(2,:),'char pl based on blobs gamma' ...
    ,'char pl of network')

%% Blob based plots local efficiency
num_blobs = 2;
local_effic = zeros(num_blobs,1);
for i = 1:56
    if i >= 13
        local_effic(1,i) = mean(mean(features_lowConf(i+4).local_effic.beta));
        local_effic(2,i) = mean(mean(features_highConf(i+4).local_effic.beta));
    else
        local_effic(1,i) = mean(mean(features_lowConf(i).local_effic.beta));
        local_effic(2,i) = mean(mean(features_highConf(i).local_effic.beta));
    end
end
plotter(local_effic(1,:),local_effic(2,:),'local effic based on blobs beta' ...
    ,'local effic of network')
%%
for i = 1:56
    if i >= 13 
        local_effic(1,i) = mean(mean(features_lowConf(i+4).local_effic.lowGamma));
        local_effic(2,i) = mean(mean(features_highConf(i+4).local_effic.lowGamma));
    else
        local_effic(1,i) = mean(mean(features_lowConf(i).local_effic.lowGamma));
        local_effic(2,i) = mean(mean(features_highConf(i).local_effic.lowGamma));
    end
end
plotter(local_effic(1,:),local_effic(2,:),'local effic based on blobs gamma' ...
    ,'local effic of network')

%% Blob based plots betweenness
num_blobs = 7;
blobs = 3:1:9;
betweenness = zeros(num_blobs,1);
for i = 1:45
    if i >= 13
        betweenness(1,i) = mean(features_lowConf(i+4).betweenness.beta);
        betweenness(2,i) = mean(features_highConf(i+4).betweenness.beta);
    else
        betweenness(1,i) = mean(features_lowConf(i).betweenness.beta);
        betweenness(2,i) = mean(features_highConf(i).betweenness.beta);
    end
end
plotter(betweenness(1,:),betweenness(2,:),'betweenness based on blobs beta' ...
    ,'betweenness of network')
%%
for i = 1:45
    if i >= 13
        betweenness(1,i) = mean(features_lowConf(i+4).betweenness.lowGamma);
        betweenness(2,i) = mean(features_highConf(i+4).betweenness.lowGamma);
    else
        betweenness(1,i) = mean(features_lowConf(i).betweenness.lowGamma);
        betweenness(2,i) = mean(features_highConf(i).betweenness.lowGamma);
    end
end
plotter(betweenness(1,:),betweenness(2,:),'betweenness based on blobs gamma' ...
    ,'betweenness of network')

%% Bar plots
load('features_highConf_all.mat');
load('features_lowConf_all.mat');
features_highConf_all.affiliations_final.beta(features_highConf_all.affiliations_final.beta == 6) = 4;
features_highConf_all.integration_modules.beta(4) = features_highConf_all.integration_modules.beta(6);

%%
for i = 1:4
    data_low = features_lowConf_all.integration_nodes.beta(features_lowConf_all.affiliations_final.beta == i);
    features_lowConf_all.integration_modules.beta(i) = mean(data_low);
    std_dev_low(i) = std(data_low) / sqrt(length(data_low));
end

for i = 1:5
    data_high = features_highConf_all.integration_nodes.beta(features_highConf_all.affiliations_final.beta == i);
    features_highConf_all.integration_modules.beta(i) = mean(data_high);
    std_dev_high(i) = std(data_high) / sqrt(length(data_high)); 
end

figure;
b = bar(features_lowConf_all.integration_modules.beta(1:4));
title('Low Conf Beta');
ylabel('Integration');
ylim([0, 1]);
grid on;
hold on

errorbar(1:4, features_lowConf_all.integration_modules.beta(1:4), std_dev_low(1:4), 'k', 'linestyle', 'none', 'LineWidth', 1);

% Define custom colors for each bar
colors = [255/256 0/256 0/256;  % Color for the first bar
          0/256 0/256 255/256;  % Color for the second bar
          255/256 240/256 23/256;  % Color for the third bar
          0/256 184/256 184/256];

% Assign color to each bar
b.FaceColor = 'flat'; % This allows individual colors for bars
b.CData = colors;     % Apply colors to bars

% Define custom labels for each bar
bar_labels = {'L_1', 'L_2', 'L_3', 'L_4'}; % Modify based on your data

% Set the custom labels
xticks(1:4);        % Set the x-ticks to correspond to each bar
xticklabels(bar_labels);       % Assign the labels to the bars

% subplot(2,2,3);
% bar(features_lowConf_all.integration_modules.lowGamma, 'FaceColor', [0.1, 0.2, 0.3]);
% title('Low Conf LowGamma');
% ylim([0, 0.3]);
% grid on;

figure;
b = bar(features_highConf_all.integration_modules.beta(1:5));
title('High Conf Beta');
ylabel('Integration');
ylim([0, 1]);
grid on;
hold on

errorbar(1:5, features_highConf_all.integration_modules.beta(1:5), std_dev_high(1:5), 'k', 'linestyle', 'none', 'LineWidth', 1);

% Define custom colors for each bar
colors = [244/256 67/256 54/256;  % Color for the first bar
          255/256 193/256 7/256;  % Color for the second bar
          139/256 175/256 74/256;  % Color for the third bar
          0/256 188/256 212/256;
          63/256 81/256 181/256];

% Assign color to each bar
b.FaceColor = 'flat'; % This allows individual colors for bars
b.CData = colors;     % Apply colors to bars

% Define custom labels for each bar
bar_labels = {'H_1', 'H_2', 'H_3', 'H_4', 'H_5'}; % Modify based on your data

% Set the custom labels
xticks(1:5);        % Set the x-ticks to correspond to each bar
xticklabels(bar_labels);       % Assign the labels to the bars

% subplot(2,2,4);
% bar(features_highConf_all.integration_modules.lowGamma, 'FaceColor', [0.1, 0.2, 0.3]);
% title('High Conf LowGamma');
% ylim([0, 0.3]);
% grid on;

%% daboxplot
% different color scheme, data scattered on top
data1 = zeros(112,1);
data2 = zeros(112,1);
data3 = zeros(112,1);
data4 = zeros(112,1);
data1(1:56,1) = clust_coef(1,:).';
data2(1:56,1) = local_effic(1,:).';
data3(1:56,1) = global_effic(1,:).';
data4(1:56,1) = char_pl(1,:).';
data1(57:112,1) = clust_coef(2,:).';
data2(57:112,1) = local_effic(2,:).';
data3(57:112,1) = global_effic(2,:).';
data4(57:112,1) = char_pl(2,:).';
%%
data1(1:56,2) = clust_coef(1,:).';
data2(1:56,2) = local_effic(1,:).';
data3(1:56,2) = global_effic(1,:).';
data4(1:56,2) = char_pl(1,:).';
data1(57:112,2) = clust_coef(2,:).';
data2(57:112,2) = local_effic(2,:).';
data3(57:112,2) = global_effic(2,:).';
data4(57:112,2) = char_pl(2,:).';
group_inx = [ones(1,56), 2.*ones(1,56)];

group_names = {'Low Confidence', 'High Confidence'};
c =  [[1 0.733 0.306];[0 0.765 0.8]];  
condition_names = {'Beta', 'Gamma'};

figure;
subplot(2,2,1)
h = daboxplot(data1,'groups',group_inx,...
    'xtlabels', condition_names,'colors',c,'whiskers',0,...
    'scatter',1,'scattersize',10,'scatteralpha',0.4,...
    'boxspacing',0.8,'legend',group_names); 
ylabel('Clustering Coeficient');
set(gca,'FontSize',9.5);
%xl = xlim; xlim([xl(1), xl(2)+0.2]);    % make more space for the legend

%figure;
subplot(2,2,2)
h = daboxplot(data2,'groups',group_inx,...
    'xtlabels', condition_names,'colors',c,'whiskers',0,...
    'scatter',1,'scattersize',10,'scatteralpha',0.4,...
    'boxspacing',0.8,'legend',group_names); 
ylabel('Local Efficiency');
set(gca,'FontSize',9.5);
%xl = xlim; xlim([xl(1), xl(2)+0.2]);    % make more space for the legend

%figure;
subplot(2,2,4)
h = daboxplot(data3,'groups',group_inx,...
    'xtlabels', condition_names,'colors',c,'whiskers',0,...
    'scatter',1,'scattersize',10,'scatteralpha',0.4,...
    'boxspacing',0.8,'legend',group_names); 
ylabel('Global Efficiency');
set(gca,'FontSize',9.5);
%xl = xlim; xlim([xl(1), xl(2)+0.2]);    % make more space for the legend

%figure;
subplot(2,2,3)
h = daboxplot(data4,'groups',group_inx,...
    'xtlabels', condition_names,'colors',c,'whiskers',0,...
    'scatter',1,'scattersize',10,'scatteralpha',0.4,...
    'boxspacing',0.8,'legend',group_names); 
ylabel('Characteristic Path Length');
set(gca,'FontSize',9.5);
%xl = xlim; xlim([xl(1), xl(2)+0.2]);    % make more space for the legend

%% Functions

function plotter(data1,data2,title_input,ylabel_input)

    %[~,p] = ttest2(data1,data2);
    [p,~,~] = ranksum(data1,data2);
    p

    data = [data1' data2'];
    figure;
    boxplot(data, 'Labels', {'lowConf', 'highConf'},'Colors','rb');
    xlabel('Data Sets');
    ylabel(ylabel_input);
    title(title_input)
    grid on

    x_pos = 1.5; % Midway between the two groups
    y_pos = max(max(data)); % Just above the maximum data value
    text(x_pos, y_pos, ['p-value = ', num2str(p, '%.5f')], 'FontSize', 10, 'HorizontalAlignment', 'center');
    hold on

    scatter(ones(size(data1)), data1, 'r', 'filled'); % Plot data1 at x = 1
    scatter(2 * ones(size(data2)), data2, 'b', 'filled'); % Plot data2 at x = 2

    hold off
end