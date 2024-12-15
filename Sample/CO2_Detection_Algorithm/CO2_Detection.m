% Define CO2 spectral signature
co2Signature = [0.02, 0.03, 0.04, 0.05, 0.04, 0.03, 0.02, 0.01]; 

co2DetectionMap = zeros(numRows, numCols);

% Perform matched filtering for each cluster
for c = 1:numClusters
    
    clusterPixels = reshapedData(clusterIdx == c, :);
    
    meanSpectrum = mean(clusterPixels, 1);
    
    meanSpectrum = meanSpectrum / norm(meanSpectrum);
    co2Signature = co2Signature / norm(co2Signature);
    
    matchedFilter = co2Signature' * meanSpectrum / (norm(meanSpectrum)^2);
    
    filterResponse = reshapedData * matchedFilter;
    
    co2DetectionMap(clusterIdx == c) = filterResponse(clusterIdx == c);
end
