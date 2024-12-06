clear;
clc;

scaleFactor = 0.5; 
band1 = imresize(im2double(imread('LC08_L1TP_113082_20211206_20211206_01_RT_B1.tif')), scaleFactor);
band2 = imresize(im2double(imread('LC08_L1TP_113082_20211206_20211206_01_RT_B2.tif')), scaleFactor);
band3 = imresize(im2double(imread('LC08_L1TP_113082_20211206_20211206_01_RT_B3.tif')), scaleFactor);
band4 = imresize(im2double(imread('LC08_L1TP_113082_20211206_20211206_01_RT_B4.tif')), scaleFactor);
band5 = imresize(im2double(imread('LC08_L1TP_113082_20211206_20211206_01_RT_B5.tif')), scaleFactor);
band6 = imresize(im2double(imread('LC08_L1TP_113082_20211206_20211206_01_RT_B6.tif')), scaleFactor);
band7 = imresize(im2double(imread('LC08_L1TP_113082_20211206_20211206_01_RT_B7.tif')), scaleFactor);
band9 = imresize(im2double(imread('LC08_L1TP_113082_20211206_20211206_01_RT_B9.tif')), scaleFactor);


ESUN = [1895.33, 2004.57, 1820.75, 1549.49, 951.76, 366.97, 247.02, 85.46];
sun_elevation = 62.15975687;  
d = 0.9853948; 

radiance_mult_band = [1.2931E-02, 1.3241E-02, 1.2202E-02, 1.0289E-02, 6.2964E-03, ...
                 1.5659E-03, 5.2778E-04, 1.1644E-02, 2.4608E-03, 3.3420E-04, ...
                 3.3420E-04];
radiance_add_band = [-64.65355, -66.20602, -61.00828, -51.44562, -31.48215, ...
                -7.82933, -2.63890, -58.22228, -12.30394, 0.10000, ...
                 0.10000];


radiance_band1 = radiance_mult_band(1) * band1 + radiance_add_band(1);
radiance_band2 = radiance_mult_band(2) * band2 + radiance_add_band(2);
radiance_band3 = radiance_mult_band(3) * band3 + radiance_add_band(3);
radiance_band4 = radiance_mult_band(4) * band4 + radiance_add_band(4);
radiance_band5 = radiance_mult_band(5) * band5 + radiance_add_band(5);
radiance_band6 = radiance_mult_band(6) * band6 + radiance_add_band(6);
radiance_band7 = radiance_mult_band(7) * band7 + radiance_add_band(7);
radiance_band9 = radiance_mult_band(8) * band9 + radiance_add_band(8);


reflectance_band1 = (pi * radiance_band1 * d^2) / (ESUN(1) * cosd(90 - sun_elevation));
reflectance_band2 = (pi * radiance_band2 * d^2) / (ESUN(2) * cosd(90 - sun_elevation));
reflectance_band3 = (pi * radiance_band3 * d^2) / (ESUN(3) * cosd(90 - sun_elevation));
reflectance_band4 = (pi * radiance_band4 * d^2) / (ESUN(4) * cosd(90 - sun_elevation));
reflectance_band5 = (pi * radiance_band5 * d^2) / (ESUN(5) * cosd(90 - sun_elevation));
reflectance_band6 = (pi * radiance_band6 * d^2) / (ESUN(6) * cosd(90 - sun_elevation));
reflectance_band7 = (pi * radiance_band7 * d^2) / (ESUN(7) * cosd(90 - sun_elevation));
reflectance_band9 = (pi * radiance_band9 * d^2) / (ESUN(8) * cosd(90 - sun_elevation));


dataCube = cat(3, reflectance_band1, reflectance_band2, reflectance_band3, reflectance_band4, ...
                  reflectance_band5, reflectance_band6, reflectance_band7, reflectance_band9);

sigma = 1;
smoothedData = imgaussfilt3(dataCube, sigma);

figure;
imagesc(smoothedData(:, :, 4));  % Display one of the bands, for example, Band 4
title('Denoised Image after Gaussian Smoothing');


[numRows, numCols, numBands] = size(smoothedData);
reshapedData = reshape(smoothedData, [], numBands);

numClusters = 5; 
[clusterIdx, ~] = kmeans(reshapedData, numClusters, 'MaxIter', 1000);

clusteredImage = reshape(clusterIdx, numRows, numCols);
%clusteredImage = (clusteredImage - min(clusteredImage(:))) / (max(clusteredImage(:)) - min(clusteredImage(:)));


co2Signature = [0.02, 0.03, 0.04, 0.05, 0.04, 0.03, 0.02, 0.01]; 


co2DetectionMap = zeros(numRows, numCols);


for c = 1:numClusters
    
    clusterPixels = reshapedData(clusterIdx == c, :);
    
    meanSpectrum = mean(clusterPixels, 1);
    
    meanSpectrum = meanSpectrum / norm(meanSpectrum);
    co2Signature = co2Signature / norm(co2Signature);
    
    matchedFilter = co2Signature' * meanSpectrum / (norm(meanSpectrum)^2);
    
    filterResponse = reshapedData * matchedFilter;
    
    co2DetectionMap(clusterIdx == c) = filterResponse(clusterIdx == c);
end

threshold = prctile(co2DetectionMap(:), 70); 
co2Anomalies = co2DetectionMap > threshold;

% Visualization
figure;
imagesc(clusteredImage);
title('Normalized K-Means Clustering Result');

figure;
imagesc(co2DetectionMap);
title('CO2 Detection Map');
