
% Define scaling factor to convert filter response to ppm
scalingFactor = 400;  % Scaling factor for converting matched filter response to CO2 concentration in ppm

% Convert CO2 detection map to ppm
co2_ppm_map = co2DetectionMap * scalingFactor;
% Converts the matched filter response to parts per million (ppm) CO2 concentration

% Apply thresholding for anomalies in ppm
ppm_threshold = prctile(co2_ppm_map(:), 70);  % Defines the threshold for detecting CO2 anomalies
co2_ppm_anomalies = co2_ppm_map > ppm_threshold;  % Identifies anomalies where CO2 exceeds the threshold

% Visualize CO2 concentration in ppm
figure;
imagesc(co2_ppm_map);  % Displays the CO2 concentration map
colormap('jet');  % Applies a color map for better visualization of the CO2 levels
title('CO2 Concentration Map (ppm)');  % Adds a title to the plot
colorbar;  % Displays a colorbar to indicate the scale of ppm
