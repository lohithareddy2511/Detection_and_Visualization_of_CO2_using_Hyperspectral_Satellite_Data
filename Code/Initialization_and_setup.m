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


