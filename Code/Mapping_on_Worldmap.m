minLat = -30; 
maxLat = 30;  
minLon = 70;  
maxLon = 130; 


% Create geographic coordinates
lat = linspace(minLat, maxLat, numRows);
lon = linspace(minLon, maxLon, numCols);
[LON, LAT] = meshgrid(lon, lat);

% Visualize CO2 detection map
figure;
worldmap([minLat, maxLat], [minLon, maxLon]);
load coastlines;
plotm(coastlat, coastlon, 'k'); % Plot coastlines
geoshow(LAT, LON, co2DetectionMap, 'DisplayType', 'texturemap');
title('CO2 Detection Map on World Map');
