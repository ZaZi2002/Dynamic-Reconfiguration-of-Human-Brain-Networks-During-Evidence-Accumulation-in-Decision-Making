% Finding connectivity graph 

function graphs = connectionGraph(windows,method)
    graphs = zeros(size(windows,1),size(windows,2),size(windows,2));
    for i = 1:size(windows,1)
        for j = 1:size(windows,2)
            for w = j+1:size(windows,2)
                graphs(i,j,w) = connectivity(method,windows(i,j,:),windows(i,w,:));
                graphs(i,w,j) = graphs(i,j,w);
            end
        end
        %clc
        %display(100*i/size(windows,1),'% Done');
    end
end