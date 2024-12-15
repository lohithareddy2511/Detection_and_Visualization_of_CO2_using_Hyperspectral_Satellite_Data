% Clear workspace and command window
clear;
clc;

%% Step 1: Load the Hyperspectral Data
dataFile = 'f110712t01p00r18rdn_c_sc01_ort_img.mat';  % Replace with your actual file name
dataStruct = load(dataFile);

% Display available fields in the loaded .mat file
disp('Fields in the loaded .mat file:');
disp(fieldnames(dataStruct));
