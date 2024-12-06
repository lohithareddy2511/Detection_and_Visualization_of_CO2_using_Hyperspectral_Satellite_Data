# Detection and Visualization of CO2 using Hyperspectral Satellite Data

## ABSTRACT

The increasing levels of atmospheric CO2 are a major driver of climate change, making accurate monitoring and analysis essential for developing effective mitigation strategies. Hyperspectral remote sensing offers a unique capability to detect specific gases, including CO2, by capturing data across a wide range of spectral bands with high spatial resolution. This project aims to detect and visualize CO2 concentrations using hyperspectral satellite data processed in MATLAB. The project begins with the acquisition of hyperspectral satellite data from sources such as Landsat, AVIRIS, or Sentinel-2. These datasets contain detailed spectral information that can be used to identify the characteristic absorption features of CO2. Following data acquisition, preprocessing steps are performed, including radiometric calibration to convert raw sensor data into physical units, and atmospheric correction to remove the effects of the atmosphere on the captured data. The core of the project involves developing a detection algorithm in MATLAB that focuses on the spectral bands where CO2 exhibits strong absorption features. This algorithm quantifies the CO2 concentration by analyzing the depth and shape of these absorption features. The detected CO2 concentrations are then visualized using MATLAB’s graphical tools, resulting in spatial maps that represent the distribution of CO2 across the study area. To ensure the accuracy of the results, the detected CO2 concentrations are validated against ground-based measurements, if available. This step is crucial for confirming the reliability of the remote sensing approach. The outcomes of this project provide valuable insights into the spatial distribution of atmospheric CO2, contributing to a better understanding of regional and global carbon cycles. The methodologies developed can be extended to monitor other atmospheric gases, offering a versatile tool for environmental monitoring and research.

### STEP 1
Data Acquisition: Download hyperspectral datasets from relevant sources such as Landsat, or AVIRIS.

### STEP 2
Data Preprocessing: Load the hyperspectral data into MATLAB using the hypercube function. Perform any necessary preprocessing steps such as noise reduction and Atmospheric Correction to convert radiance to reflectance.

### STEP 3
CO2 Detection: ImplementING algorithms to detect CO2 concentration from hyperspectral data by using spectral indices or other relevant methods to quantify CO2 levels. The technique used for estimating CO2 emission from hyperspectral images is Cluster-Tuned Matched Filter (CTMF). Thos technique involves: i)Clustering: Perform k-means clustering on the hyperspectral data to group pixels with similar spectral properties. ii)Matched Filter Design: For each cluster, design a matched filter tuned to the specific spectral signature of CO2. iii)Filter Application: Apply the matched filters to the hyperspectral data to detect CO2 anomalies.

### STEP 4
CO2 Concentration Estimation: Estimate CO2 concentration based on the calculated band ratios.

### STEP 5
Result Analysis: Analyze the final estimates to quantify CO2 concentrations and identify regions with elevated CO2 levels

### STEP 6
Visualization: Visualize the detected CO2 concentration, on a map using the Mapping Toolbox .

### FINAL OUTPUTS

The images provide a comprehensive analysis by showing the denoised image obtained by applying the Gaussian Smoothing Filter, then the clustering of data by using K-Means Clustering Algorithm, and finally showing the CO₂ distribution across the area.

#### Denoised image after Gaussian Smoothing

![Screenshot 2024-12-06 200814](https://github.com/user-attachments/assets/d95981b2-7a69-4cfb-a13a-3f3a48b59486)

The image shows a cleaned-up reflectance band from the dataset image, where bright colors mean more light reflected and dark colors mean less. The smoothing reduces noise, making land and water patterns clearer within the satellite’s path.

#### Clustered Data 

![Screenshot 2024-12-06 200756](https://github.com/user-attachments/assets/7ce22865-2f38-40ed-a8c2-1c29671f9427)

It identifies groups of pixels with similar spectral properties. Each pixel in the hyperspectral image is categorized based on its spectral signature.


#### CO2 Detection in the area

![Screenshot 2024-12-06 200743](https://github.com/user-attachments/assets/ea77ce1c-d397-4ccc-aa21-21eba490b5ee)

The final image shows the spatial distribution of CO₂ across the scene, showing where CO₂ is more concentrated.



