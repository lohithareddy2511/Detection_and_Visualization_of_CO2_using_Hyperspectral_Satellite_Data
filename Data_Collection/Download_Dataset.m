%Use this code to download the dataset into MATLAB Online Compiler and then import it into the local device 

zipfile = "LC08_L1TP_113082_20211206_20211206_01_RT.zip";
landsat8Data_url = "https://ssd.mathworks.com/supportfiles/image/data/" + zipfile;
downloadLandsat8Dataset(landsat8Data_url,pwd)
