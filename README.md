# MATLAB and Simulink Challenge Project Solutions for CO2 Detection and Visualization Using Hyperspectral Satellite Data

Project 251



The project description can be found at https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/blob/main/projects/Detection%20and%20.Visualization of CO2 Concentration Hyperspectral SatelliteData/README.md 
# Project Details
In this work, satellite hyperspectral data is processed to identify high carbon dioxide (CO2) concentrations, and the results are displayed on a worldwide geographic map. The Hyperspectral Imaging Library for Image Processing and Mapping Toolbox in MATLAB is used to handle and analyze the data. The advanced Cluster-Tuned Matched Filter (CTMF) technology, k-means clustering, and spectral indices are used by the system to identify CO2 anomalies in the atmosphere.

## ABSTRACT

Since increasing atmospheric CO2 concentrations are one of the main causes of climate change, accurate monitoring and analysis are crucial for successful mitigation strategies. Hyperspectral remote sensing provides a unique capacity to identify specific gases, such CO2, by gathering data with high spatial resolution over a range of spectral bands. The goal of this project is to detect and visualize CO2 concentrations by evaluating hyperspectral satellite data using MATLAB. Sentinel-2, AVIRIS, and Landsat hyperspectral satellite data are being collected as part of the study's initial phase. The detailed spectrum information in these recordings can be used to identify the unique absorption properties of CO2. Following data collection, preprocessing steps are taken, such as radiometric calibration to convert raw sensor data into physical units and atmospheric correction to remove the influence of the atmosphere on the recorded data. The primary objective of the work is to develop a MATLAB detection method that focuses on the spectrum regions where CO2 exhibits notable absorption properties. Our program determines the CO2 concentration by examining the form and depth of these absorption features. The recorded CO2 concentrations are then graphically displayed using MATLAB's features, creating spatial maps that illustrate the CO2 distribution throughout the study area. To ensure the accuracy of the results, the detected CO2 concentrations are compared with any available ground-based data. This stage is necessary to confirm that the remote sensing method is accurate. The results of the study provide valuable information regarding the spatial distribution of atmospheric CO2, which advances our understanding of regional and global carbon cycles. More atmospheric gases can be tracked using the existing techniques, making it a versatile tool for environmental research and monitoring.

### Step 1: Information Collection
The provided repository was used to execute the Matlab example "https://in.mathworks.com/help/images/find-regions-multispectral-georeference.html".Real-time usage of hyperspectral datasets from relevant sources, such AVIRIS or Landsat is possible.

### Step 2: Data Preparation
We preprocessed the data using MATLAB built-in hypercube function. We also used some of the atmospheric adjustment and noise reduction techniques to transform it from radiance to reflactance for further preprocessing. For further precessing, advanced atmospheric correction algorithms and better noise reduction filters can be applied.

### Step 3: Identification of CO2
In order to use algorithms that determine CO2 concentration from hyperspectral data, CO2 levels are quantified using spectral indices or other relevant methodologies. The technique used to estimate CO2 emission from hyperspectral images is called Cluster-Tuned Matched Filter (CTMF). It consists of: 

i) Clustering: We employed k-means clustering on the hyperspectral data to group pixels with similar spectral properties.

The hyperspectral data is clustered using the K-Means Clustering method, an unsupervised learning method groups pixels based on similar spectral characteristics. Each cluster in the image represents regions with similar reflectance properties, such as vegetation, aquatic bodies, or atmospheric phenomena.

ii) Matched Filter Design: We developed a filter that corresponds to each cluster's distinct CO2 spectral signature. 

After clustering, a matching filter is applied to each cluster. In order to detect the unique spectral signature of CO2, this filter was especially created analytically. By boosting the CO2 spectral characteristics and decreasing other signals, it effectively isolates the CO2 concentration from other dataset components.

iii) Filter Application: Use the proper filters on the hyperspectral data to identify CO2 abnormalities.

To find CO2 anomalies, the clustered hyperspectral data is subsequently filtered using the proper filter. The result of this phase is a map showing areas with notably higher CO2 concentrations than the surrounding area.

### Step 4: Calculate the CO2 Level
We can determine the CO2 concentration using the anticipated band ratios.

### Step 5: Results Analysis
To ascertain CO2 concentrations and identify regions with elevated CO2 levels, review the final forecasts.

### Step 6: Visualization
To view the observed CO2 concentration on a map, use the Mapping Toolbox.

### FINAL OUTCOMES

By showing the CO₂ distribution over the area, the data clustering procedure using the K-Means Clustering Algorithm, and the denoised image created by using the Gaussian Smoothing Filter, the photos provide a comprehensive analysis.

#### Denoising images after Gaussian smoothing

![December 6, 2024] A screenshot from https://github.com/user-attachments/assets/d95981b2-7a69-4cfb-a13a-3f3a48b59486 is provided.

Dark colors don't reflect as much light as bright ones do. A cleaned-up reflectance band from the dataset image is shown in the image. By reducing noise levels while in orbit, the smoothing enhances the satellite's perception of land and water patterns.

#### Clustering of Data 

200656 December 6, 2024 https://github.com/user-attachments/assets/7ce22865-2f38-40ed-a8c2-1c29671f9427 is the URL.

It locates groups of pixels with similar spectral properties. Each pixel in the hyperspectral image is classified based on its spectral signature.


#### Local Results for CO2

![6 December 200743, 2024] Screenshot Eba490b5ee Ea77ce1c-d397-4ccc-aa21-21 Resources: https://github.com/user-attachments

The final graphic shows the landscape's spatial distribution of CO₂, emphasizing regions with higher concentrations.

## Operational Guidelines


