% Apply thresholding to highlight CO2 anomalies
threshold = prctile(co2DetectionMap(:), 70); 
co2Anomalies = co2DetectionMap > threshold;

% Visualize CO2 detection map
figure;
imagesc(co2DetectionMap);
title('CO2 Detection Map');
