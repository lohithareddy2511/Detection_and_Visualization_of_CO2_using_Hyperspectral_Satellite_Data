# MATLAB and Simulink Challenge Project Solutions for CO2 Detection and Visualization Using Hyperspectral Satellite Data

Project 251



The project description can be found at [https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/blob/main/projects/Detection%20and%20.Visualization of CO2 Concentration Hyperspectral SatelliteData/README.md ](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/blob/main/projects/Detection%20and%20Visualization%20of%20CO2%20Concentration%20Using%20Hyperspectral%20Satellite%20Data/README.md)
# Project Details
In this work, satellite hyperspectral data is processed to identify high carbon dioxide (CO2) concentrations, and the results are displayed on a worldwide geographic map. The Hyperspectral Imaging Library for Image Processing and Mapping Toolbox in MATLAB is used to handle and analyze the data. The advanced Cluster-Tuned Matched Filter (CTMF) technology, k-means clustering, and spectral indices are used by the system to identify CO2 anomalies in the atmosphere.

## ABSTRACT
CO2 levels in the atmosphere are also on the rise therefore perfect than monitoring and analyzing the rate at which it’s accumulate is crucial in formulation of mitigation measures. One of the main advantages of hyperspectral remote sensing is that the system is able to identify and quantify particular gases, for instance, carbon dioxide by collecting data in a large number of narrow bands at high spatial resolution. This project proposes to predict and map CO2 concentrations utilizing hyperspectral satellite data analyzed in MATLAB. The project starts with the collection of hyperspectral satellite data from Landsat, AVIRIS, or Sentinel-2 instruments or similar. These datasets are very rich in terms of spectral data we have the ability to see what the ‘absorption spectrum of CO2’looks like. After collecting data from a given area, there are some steps taken where; raw data obtained from a specific sensor is converted into physical units through radiometric calibration. The principal part of the project deals with the creation of a detection algorithm in MATLAB that targets the groups of bands, which correspond to the CO2 band strengths. The depth and shape of these absorption features are used to quantify the CO2 concentration using this algorithm. This measures are then used to produce graphical maps on MATLAB which show the distribution of CO2 in the study area. To reduce the error in the calculated values, the detected CO2 concentrations are then compared with ground-based measurements, if present. This step is important so that the correctness of the remote sensing approach can be validated. The results of this project make it possible to understand the spatial-temporal distribution of CO2 in the atmosphere and make conclusions regarding regional and global carbon budgets. These methodologies may be generalized to other gases present in the atmosphere thereby making it a powerful instrument in environmental or atmospheric investigations.


### Step 1: Information Collection
The provided repository was used to execute the Matlab example ["https://in.mathworks.com/help/images/find-regions-multispectral-georeference.html"](https://in.mathworks.com/help/images/find-regions-multispectral-georeference.html) .Real-time usage of hyperspectral datasets from relevant sources, such AVIRIS or Landsat is possible.


![Screenshot 2024-12-11 173637](https://github.com/user-attachments/assets/6f043165-5eab-4ed5-90b9-217f59085d8d)


### Step 2: Data Preparation
We preprocessed the data using MATLAB built-in hypercube function. We also used some of the atmospheric adjustment and noise reduction techniques to transform it from radiance to reflactance for further preprocessing. For further precessing, advanced atmospheric correction algorithms and better noise reduction filters can be applied.

#### Denoising images after Gaussian smoothing

![Screenshot 2024-12-06 200814](https://github.com/user-attachments/assets/d95981b2-7a69-4cfb-a13a-3f3a48b59486)

Dark colors don't reflect as much light as bright ones do. A cleaned-up reflectance band from the dataset image is shown in the image. By reducing noise levels while in orbit, the smoothing enhances the satellite's perception of land and water patterns.

### Step 3: Identification of CO2
In order to use algorithms that determine CO2 concentration from hyperspectral data, CO2 levels are quantified using spectral indices or other relevant methodologies. The technique used to estimate CO2 emission from hyperspectral images is called Cluster-Tuned Matched Filter (CTMF). It consists of: 

##### i)Clustering: 
We employed k-means clustering on the hyperspectral data to group pixels with similar spectral properties.
The hyperspectral data is clustered using the K-Means Clustering method, an unsupervised learning method groups pixels based on similar spectral characteristics. Each cluster in the image represents regions with similar reflectance properties, such as vegetation, aquatic bodies, or atmospheric phenomena.

##### ii) Matched Filter Design: 
We developed a filter that corresponds to each cluster's distinct CO2 spectral signature. 
After clustering, a matching filter is applied to each cluster. In order to detect the unique spectral signature of CO2, this filter was especially created analytically. By boosting the CO2 spectral characteristics and decreasing other signals, it effectively isolates the CO2 concentration from other dataset components.

 ##### iii)Filter Application: 
Use the proper filters on the hyperspectral data to identify CO2 abnormalities.
To find CO2 anomalies, the clustered hyperspectral data is subsequently filtered using the proper filter. The result of this phase is a map showing areas with notably higher CO2 concentrations than the surrounding area.

#### Clustering of Data 

![Screenshot 2024-12-06 200756](https://github.com/user-attachments/assets/7ce22865-2f38-40ed-a8c2-1c29671f9427)

It locates groups of pixels with similar spectral properties. Each pixel in the hyperspectral image is classified based on its spectral signature.

### Step 4: Calculate the CO2 Level
We can determine the CO2 concentration using the anticipated band ratios.


#### Local Results for CO2

![Screenshot 2024-12-06 200743](https://github.com/user-attachments/assets/ea77ce1c-d397-4ccc-aa21-21eba490b5ee)

The final graphic shows the landscape's spatial distribution of CO₂, emphasizing regions with higher concentrations.


### Step 5: Results Analysis
To ascertain CO2 concentrations and identify regions with elevated CO2 levels, review the final forecasts.

### Step 6: Visualization
To view the observed CO2 concentration on a map, use the Mapping Toolbox.

### FINAL OUTCOMES

By showing the CO₂ distribution over the area, the data clustering procedure using the K-Means Clustering Algorithm, and the denoised image created by using the Gaussian Smoothing Filter, the photos provide a comprehensive analysis.

#### Visualisation on the World Map 

![Mapping_on_worldmap](https://github.com/user-attachments/assets/70c6ead3-4445-4bd3-881f-9b88b2b4c3e3)



## Video explanation on how to run the code


