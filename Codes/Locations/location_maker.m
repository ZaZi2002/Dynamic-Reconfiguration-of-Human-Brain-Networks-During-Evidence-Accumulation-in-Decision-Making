
locations = zeros(68,3);
a = 0;
for i = 1:68
    a = Scouts(i).Vertices;
    for j = 1:size(a,2)
        locations(i,:) = locations(i,:) + GridLoc(a(1,j),:);
    end
    locations(i,:) = locations(i,:) / size(a,2);
end
sources_locations = locations;
source_regions = Region;

%%