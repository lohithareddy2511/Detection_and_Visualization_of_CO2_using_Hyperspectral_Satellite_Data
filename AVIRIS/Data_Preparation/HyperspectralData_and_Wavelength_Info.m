% Dynamically identify the hyperspectral data field
fieldNames = fieldnames(dataStruct);
bands = [];
wavelengths = [];

for i = 1:numel(fieldNames)
    fieldData = dataStruct.(fieldNames{i});
    if ndims(fieldData) == 3  % Check if it's a 3D array (hyperspectral cube)
        bands = fieldData;
        disp(['Using hyperspectral data field: ', fieldNames{i}]);
    elseif isvector(fieldData) && isnumeric(fieldData)
        wavelengths = fieldData;
        disp(['Using wavelength field: ', fieldNames{i}]);
    end
end

% Error checks
if isempty(bands)
    error('No 3D hyperspectral data found in the .mat file.');
end

if isempty(wavelengths)
    error('No wavelength information found in the .mat file.');
end

% Display data dimensions
[h, w, d] = size(bands);
disp(['Data dimensions: ', num2str(h), ' x ', num2str(w), ' x ', num2str(d)]);
disp(['Number of wavelengths: ', num2str(length(wavelengths))]);
