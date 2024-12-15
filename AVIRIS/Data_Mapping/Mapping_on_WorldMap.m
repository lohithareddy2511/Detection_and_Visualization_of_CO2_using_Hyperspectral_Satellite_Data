% Define latitude and longitude limits
latlim = [-90, 90];
lonlim = [-90, 90];

% Generate latitude and longitude grids
[rows, cols] = size(co2_swir_ppm);
lat = linspace(latlim(1), latlim(2), rows);
lon = linspace(lonlim(1), lonlim(2), cols);
[Lat, Lon] = meshgrid(lon, lat);

% Replace NaNs with zeros
co2_swir_ppm(isnan(co2_swir_ppm)) = 0;

% Plot the georeferenced data
figure;
worldmap(latlim, lonlim);
geoshow(Lat, Lon, co2_swir_ppm, 'DisplayType', 'surface');
colormap(turbo);
colorbar;
caxis([300, 800]);  % Adjust color scale limits
title('Georeferenced CO₂ Concentration (ppm) - SWIR Band');

% Plot NIR CO₂ ppm on a world map
figure;
worldmap(latlim, lonlim);
geoshow(Lat, Lon, co2_nir_ppm, 'DisplayType', 'surface');
colormap(turbo);
colorbar;
title('Georeferenced CO₂ Concentration (ppm) - NIR Band');


