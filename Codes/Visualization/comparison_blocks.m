% Plottings based on blob
clc

%% Blob based plots integ
num_blobs = 2;
integ_network = zeros(num_blobs,1);
for i = 1:42
    if i >= 13
        integ_network(1,i) = mean(features_response(i+4).integration_network.beta);
        integ_network(2,i) = mean(features_firstBlob(i+4).integration_network.beta);
    else
        integ_network(1,i) = mean(features_response(i).integration_network.beta);
        integ_network(2,i) = mean(features_firstBlob(i).integration_network.beta);
    end
end
plotter(integ_network(1,:),integ_network(2,:),'integration based on blobs beta' ...
    ,'integration of network')

for i = 1:42
    if i >= 13 
        integ_network(1,i) = mean(features_response(i+4).integration_network.lowGamma);
        integ_network(2,i) = mean(features_firstBlob(i+4).integration_network.lowGamma);
    else
        integ_network(1,i) = mean(features_response(i).integration_network.lowGamma);
        integ_network(2,i) = mean(features_firstBlob(i).integration_network.lowGamma);
    end
end
plotter(integ_network(1,:),integ_network(2,:),'integration based on blobs gamma' ...
    ,'integration of network')

%% Blob based plots clustering coef
num_blobs = 2;
clust_coef = zeros(num_blobs,1);
for i = 1:42
    if i >= 13
        clust_coef(1,i) = mean(features_response(i+4).clustering_coef.beta);
        clust_coef(2,i) = mean(features_firstBlob(i+4).clustering_coef.beta);
    else
        clust_coef(1,i) = mean(features_response(i).clustering_coef.beta);
        clust_coef(2,i) = mean(features_firstBlob(i).clustering_coef.beta);
    end
end
plotter(clust_coef(1,:),clust_coef(2,:),'clustering coef based on blobs beta' ...
    ,'clustering coef of network')

for i = 1:42
    if i >= 13
        clust_coef(1,i) = mean(features_response(i+4).clustering_coef.lowGamma);
        clust_coef(2,i) = mean(features_firstBlob(i+4).clustering_coef.lowGamma);
    else
        clust_coef(1,i) = mean(features_response(i).clustering_coef.lowGamma);
        clust_coef(2,i) = mean(features_firstBlob(i).clustering_coef.lowGamma);
    end
end
plotter(clust_coef(1,:),clust_coef(2,:),'clustering coef based on blobs gamma' ...
    ,'clustering coef of network')

%% Blob based plots global efficiency
num_blobs = 2;
global_effic = zeros(num_blobs,1);
for i = 1:42
    if i >= 13
        global_effic(1,i) = mean(features_response(i+4).global_effic.beta);
        global_effic(2,i) = mean(features_firstBlob(i+4).global_effic.beta);
    else
        global_effic(1,i) = mean(features_response(i).global_effic.beta);
        global_effic(2,i) = mean(features_firstBlob(i).global_effic.beta);
    end
end
plotter(global_effic(1,:),global_effic(2,:),'global effic based on blobs beta' ...
    ,'global effic of network')

for i = 1:42
    if i >= 13 
        global_effic(1,i) = mean(features_response(i+4).global_effic.lowGamma);
        global_effic(2,i) = mean(features_firstBlob(i+4).global_effic.lowGamma);
    else
        global_effic(1,i) = mean(features_response(i).global_effic.lowGamma);
        global_effic(2,i) = mean(features_firstBlob(i).global_effic.lowGamma);
    end
end
plotter(global_effic(1,:),global_effic(2,:),'global effic based on blobs gamma' ...
    ,'global effic of network')

%% Blob based plots characteristic path length
num_blobs = 2;
char_pl = zeros(num_blobs,1);
for i = 1:42
    if i >= 13
        char_pl(1,i) = mean(features_response(i+4).char_pl.beta);
        char_pl(2,i) = mean(features_firstBlob(i+4).char_pl.beta);
    else
        char_pl(1,i) = mean(features_response(i).char_pl.beta);
        char_pl(2,i) = mean(features_firstBlob(i).char_pl.beta);
    end
end
plotter(char_pl(1,:),char_pl(2,:),'char pl based on blobs beta' ...
    ,'char pl of network')

for i = 1:42
    if i >= 13 
        char_pl(1,i) = mean(features_response(i+4).char_pl.lowGamma);
        char_pl(2,i) = mean(features_firstBlob(i+4).char_pl.lowGamma);
    else
        char_pl(1,i) = mean(features_response(i).char_pl.lowGamma);
        char_pl(2,i) = mean(features_firstBlob(i).char_pl.lowGamma);
    end
end
plotter(char_pl(1,:),char_pl(2,:),'char pl based on blobs gamma' ...
    ,'char pl of network')

%% Blob based plots efficiency
num_blobs = 2;
efficiency = zeros(num_blobs,1);
for i = 1:42
    if i >= 13
        efficiency(1,i) = mean(features_response(i+4).efficiency.beta);
        efficiency(2,i) = mean(features_firstBlob(i+4).efficiency.beta);
    else
        efficiency(1,i) = mean(features_response(i).efficiency.beta);
        efficiency(2,i) = mean(features_firstBlob(i).efficiency.beta);
    end
end
plotter(efficiency(1,:),efficiency(2,:),'efficiency based on blobs beta' ...
    ,'efficiency of network')

for i = 1:42
    if i >= 13
        efficiency(1,i) = mean(features_response(i+4).efficiency.lowGamma);
        efficiency(2,i) = mean(features_firstBlob(i+4).efficiency.lowGamma);
    else
        efficiency(1,i) = mean(features_response(i).efficiency.lowGamma);
        efficiency(2,i) = mean(features_firstBlob(i).efficiency.lowGamma);
    end
end
plotter(efficiency(1,:),efficiency(2,:),'efficiency based on blobs gamma' ...
    ,'efficiency of network')

%% Blob based plots local efficiency
num_blobs = 2;
local_effic = zeros(num_blobs,1);
for i = 1:42
    if i >= 13
        local_effic(1,i) = mean(mean(features_response(i+4).local_effic.beta));
        local_effic(2,i) = mean(mean(features_firstBlob(i+4).local_effic.beta));
    else
        local_effic(1,i) = mean(mean(features_response(i).local_effic.beta));
        local_effic(2,i) = mean(mean(features_firstBlob(i).local_effic.beta));
    end
end
plotter(local_effic(1,:),local_effic(2,:),'local effic based on blobs beta' ...
    ,'local effic of network')

for i = 1:42
    if i >= 13 
        local_effic(1,i) = mean(mean(features_response(i+4).local_effic.lowGamma));
        local_effic(2,i) = mean(mean(features_firstBlob(i+4).local_effic.lowGamma));
    else
        local_effic(1,i) = mean(mean(features_response(i).local_effic.lowGamma));
        local_effic(2,i) = mean(mean(features_firstBlob(i).local_effic.lowGamma));
    end
end
plotter(local_effic(1,:),local_effic(2,:),'local effic based on blobs gamma' ...
    ,'local effic of network')

%% Blob based plots betweenness
num_blobs = 7;
blobs = 3:1:9;
betweenness = zeros(num_blobs,1);
for i = 1:42
    if i >= 13
        betweenness(1,i) = mean(features_response(i+4).betweenness.beta);
        betweenness(2,i) = mean(features_firstBlob(i+4).betweenness.beta);
    else
        betweenness(1,i) = mean(features_response(i).betweenness.beta);
        betweenness(2,i) = mean(features_firstBlob(i).betweenness.beta);
    end
end
plotter(betweenness(1,:),betweenness(2,:),'betweenness based on blobs beta' ...
    ,'betweenness of network')

for i = 1:42
    if i >= 13
        betweenness(1,i) = mean(features_response(i+4).betweenness.lowGamma);
        betweenness(2,i) = mean(features_firstBlob(i+4).betweenness.lowGamma);
    else
        betweenness(1,i) = mean(features_response(i).betweenness.lowGamma);
        betweenness(2,i) = mean(features_firstBlob(i).betweenness.lowGamma);
    end
end
plotter(betweenness(1,:),betweenness(2,:),'betweenness based on blobs gamma' ...
    ,'betweenness of network')

%% Functions

function plotter(data1,data2,title_input,ylabel_input)

    [~,p] = ttest2(data1,data2);

    data = [data1' data2'];
    figure;
    boxplot(data, 'Labels', {'Response', 'First Blob'},'Colors','rb');
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