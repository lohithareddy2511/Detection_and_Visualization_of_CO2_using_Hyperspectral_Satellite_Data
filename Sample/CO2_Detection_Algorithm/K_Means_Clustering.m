% Reshape data cube for clustering

[numRows, numCols, numBands] = size(smoothedData);
reshapedData = reshape(smoothedData, [], numBands);

% Perform K-Means clustering
numClusters = 5; 
[clusterIdx, ~] = kmeans(reshapedData, numClusters, 'MaxIter', 1000);

% Reshape clustering results back to image dimensions
clusteredImage = reshape(clusterIdx, numRows, numCols);
%clusteredImage = (clusteredImage - min(clusteredImage(:))) / (max(clusteredImage(:)) - min(clusteredImage(:)));


% Visualize clustering result
figure;
imagesc(clusteredImage);
title('Normalized K-Means Clustering Result');
