% Define geographic boundaries for the map
minLat = -30; 
maxLat = 30;  
minLon = 70;  
maxLon = 130; 
% Specifies the geographic region for mapping (latitude and longitude boundaries)

% Create geographic coordinates
lat = linspace(minLat, maxLat, numRows);  % Generates latitude values for the map
lon = linspace(minLon, maxLon, numCols);  % Generates longitude values for the map
[LON, LAT] = meshgrid(lon, lat);  % Creates a meshgrid of latitude and longitude for mapping

% Visualize CO2 ppm anomalies on world map
figure;
worldmap([minLat, maxLat], [minLon, maxLon]);  % Creates a world map based on the defined lat/lon boundaries
load coastlines;  % Loads coastlines for accurate map plotting
plotm(coastlat, coastlon, 'k');  % Plots the coastlines on the map
geoshow(LAT, LON, double(co2_ppm_map), 'DisplayType', 'texturemap');  % Displays the CO2 anomalies on the map
colormap('jet');  % Applies a color map for visualization
title('CO2 PPM Anomalies on World Map');  % Adds a title to the map visualization
colorbar;  % Displays a colorbar to indicate the scale of ppm
