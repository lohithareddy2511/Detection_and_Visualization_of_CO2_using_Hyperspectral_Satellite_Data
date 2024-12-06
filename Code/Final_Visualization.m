% Apply thresholding to highlight CO2 anomalies
threshold = prctile(co2DetectionMap(:), 70); 
co2Anomalies = co2DetectionMap > threshold;

% Visualize CO2 detection map
figure;
imagesc(co2DetectionMap);
title('CO2 Detection Map');

%Final Outputs
![Screenshot 2024-12-06 200814](https://github.com/user-attachments/assets/d95981b2-7a69-4cfb-a13a-3f3a48b59486)
![Screenshot 2024-12-06 200756](https://github.com/user-attachments/assets/7ce22865-2f38-40ed-a8c2-1c29671f9427)
![Screenshot 2024-12-06 200743](https://github.com/user-attachments/assets/ea77ce1c-d397-4ccc-aa21-21eba490b5ee)
