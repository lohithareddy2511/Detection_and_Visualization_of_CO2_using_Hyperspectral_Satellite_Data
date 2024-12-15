# MATLAB and Simulink Challenge Project Solutions for CO2 Detection and Visualization Using Hyperspectral Satellite Data

Project 251



The project description can be found at [https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/blob/main/projects/Detection%20and%20.Visualization of CO2 Concentration Hyperspectral SatelliteData/README.md ](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/blob/main/projects/Detection%20and%20Visualization%20of%20CO2%20Concentration%20Using%20Hyperspectral%20Satellite%20Data/README.md)
# Project Details
In this work, satellite hyperspectral data is processed to identify high carbon dioxide (CO2) concentrations, and the results are displayed on a worldwide geographic map. The Hyperspectral Imaging Library for Image Processing and Mapping Toolbox in MATLAB is used to handle and analyze the data. The advanced Cluster-Tuned Matched Filter (CTMF) technology, k-means clustering, and spectral indices are used by the system to identify CO2 concentration in the atmosphere.

## ABSTRACT
CO2 levels in the atmosphere are also on the rise therefore perfect than monitoring and analyzing the rate at which it’s accumulate is crucial in formulation of mitigation measures. One of the main advantages of hyperspectral remote sensing is that the system is able to identify and quantify particular gases, for instance, carbon dioxide by collecting data in a large number of narrow bands at high spatial resolution. This project proposes to predict and map CO2 concentrations utilizing hyperspectral satellite data analyzed in MATLAB. The project starts with the collection of hyperspectral satellite data from Landsat, AVIRIS, or Sentinel-2 instruments or similar. These datasets are very rich in terms of spectral data we have the ability to see what the ‘absorption spectrum of CO2’looks like. After collecting data from a given area, there are some steps taken where; raw data obtained from a specific sensor is converted into physical units through radiometric calibration. The principal part of the project deals with the creation of a detection algorithm in MATLAB that targets the groups of bands, which correspond to the CO2 band strengths. The depth and shape of these absorption features are used to quantify the CO2 concentration using this algorithm. This measures are then used to produce graphical maps on MATLAB which show the distribution of CO2 in the study area. You can compare the detected CO2 concentrations with ground-based measurements, if present. The results of this project make it possible to understand the spatial-temporal distribution of CO2 in the atmosphere and make conclusions regarding regional and global carbon budgets. These methodologies may be generalized to other gases present in the atmosphere thereby making it a powerful instrument in environmental or atmospheric investigations.

### For the sample data given in Mathworks:

### Step 1: Data Collection
The provided repository was used to execute the Matlab example ["https://in.mathworks.com/help/images/find-regions-multispectral-georeference.html"](https://in.mathworks.com/help/images/find-regions-multispectral-georeference.html) .Real-time usage of hyperspectral datasets from relevant sources, such AVIRIS or Landsat is possible.

![Screenshot 2024-12-11 173637](https://github.com/user-attachments/assets/6f043165-5eab-4ed5-90b9-217f59085d8d)

### Step 2: Data Preparation
We preprocessed the data using MATLAB built-in hypercube function. We also used some of the atmospheric adjustment and noise reduction techniques to transform it from radiance to reflactance for further preprocessing. For further precessing, advanced atmospheric correction algorithms and better noise reduction filters can be applied.

#### Denoising images after Gaussian smoothing

![Screenshot 2024-12-06 200814](https://github.com/user-attachments/assets/d95981b2-7a69-4cfb-a13a-3f3a48b59486)

A cleaned-up reflectance band from the dataset image is shown in the image. By reducing noise levels while in orbit, the smoothing enhances the satellite's perception of land and water patterns.

### Step 3: CO2 Detection Algorithm
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

https://github.com/user-attachments/assets/2ef8feab-d220-48bf-b926-bba2265a6dab






### For the data from the AVIRIS Portal:

### Step I : Data Collection
Steps to Access and Process the AVIRIS Dataset:

1: Visit the AVIRIS data access page. This is the starting point for accessing AVIRIS datasets.

2: Click on the link to the AVIRIS Data Portal. This will redirect you to the repository for downloading the datasets.

3: On the Data Portal page, find the section labeled "Download KML Layers by Year". Select any of the listed years and download the corresponding KML file.

4: Open Google Earth on your system or access it online through Google Earth Web.

5: In Google Earth:
Click "New" in the top-left corner of the screen.
Select "Open Local KML File", or press Ctrl + L, and then browse to the location where you saved the downloaded KML file.

![Screenshot 2024-12-15 165416](https://github.com/user-attachments/assets/45a02ddb-4747-4baf-9371-40e8a37f303a)


6: Once the KML file is loaded, red lines or highlighted areas will appear on the map. Click on any of these red lines, and follow the provided link to download the associated dataset.

![Screenshot 2024-12-15 165811](https://github.com/user-attachments/assets/4d80f311-1bf2-48a8-ae53-4ba7813a2dfa)

7: After downloading, unzip the file to extract its contents. The extracted folder will contain multiple files, including HDR and large data files.

8: Download IDCubeLite from this link. This tool will help you convert the dataset into MATLAB-compatible formats.

9: Open the IDCubeLite application after installation.

10: In IDCubeLite:
Click on "File" in the top-left corner of the window.
Select "Import Other Formats and Convert to IDCube".
From the format options, choose "AVIRIS" and then "AVIRIS Classic".

![Screenshot 2024-12-15 170645](https://github.com/user-attachments/assets/80a48484-9b3c-4389-b13e-7c97aa4a8643)

11: Browse to the folder containing the unzipped data and select the .hdr file and the datafile (large size datafile)

12: Once the files are selected, IDCubeLite will process them and generate a MATLAB-compatible data file. The generated file will be saved to your system.

![Screenshot 2024-12-15 171145](https://github.com/user-attachments/assets/30f34b6b-d781-4177-912f-eb82c5b5db28)

![Screenshot 2024-12-15 172228](https://github.com/user-attachments/assets/f43885be-a11b-4a48-95da-ae2e71c5d778)

### Step 2: Data Preparation

The code ensures the integrity and usability of the loaded data. It checks for the presence of hyperspectral data and wavelength information. The program dynamically identifies the fields containing this data, ensuring flexibility for different datasets. Additionally, the dimensions of the hyperspectral cube are extracted and displayed to confirm the dataset’s structure. This step ensures that the data is properly organized for further processing.

![Screenshot 2024-12-15 192759](https://github.com/user-attachments/assets/1d5ded96-8f93-4947-aa3e-73b9b3d7abb6)

### Step 3: CO2 Detection Algorithm

The algorithm focuses on leveraging the hyperspectral cube to isolate and analyze CO₂ absorption bands. Specifically, the NIR and SWIR absorption regions are targeted. For each region:

a. Band Extraction: The relevant hyperspectral slices corresponding to CO₂ absorption bands are extracted based on the previously identified indices.
b. Visualization: The extracted bands are visualized using MATLAB’s imagesc function, with colormaps (jet and parula) enhancing interpretability. Titles and axis labels provide context, such as the specific wavelength.
c. Concentration Estimation: A simple linear calibration is applied to convert pixel intensities into CO₂ concentration (ppm). This uses predefined scaling factors and offsets, which simulate real-world calibration. The derived CO₂ concentration maps are visualized to illustrate spatial variations.
The algorithm integrates critical components, including spectral filtering and intensity-to-concentration mapping, to achieve reliable CO₂ detection.





