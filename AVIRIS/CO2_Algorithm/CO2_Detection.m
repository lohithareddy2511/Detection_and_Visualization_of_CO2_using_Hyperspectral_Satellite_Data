% CO₂ absorption wavelength ranges (in nanometers)
co2_nir_range = [1570, 1610];  % Near-Infrared (NIR) CO₂ absorption
co2_swir_range = [2000, 2060]; % Shortwave Infrared (SWIR) CO₂ absorption

% Find the indices of the bands within the CO₂ absorption ranges
co2_nir_indices = find(wavelengths >= co2_nir_range(1) & wavelengths <= co2_nir_range(2));
co2_swir_indices = find(wavelengths >= co2_swir_range(1) & wavelengths <= co2_swir_range(2));
% Display NIR CO₂ indices
if ~isempty(co2_nir_indices)
    disp(['NIR CO₂ band indices: ', sprintf('%d ', co2_nir_indices)]);
else
    disp('No NIR CO₂ bands found.');
end

% Display SWIR CO₂ indices
if ~isempty(co2_swir_indices)
    disp(['SWIR CO₂ band indices: ', sprintf('%d ', co2_swir_indices)]);
else
    disp('No SWIR CO₂ bands found.');
end


%% Step 4: Extract and Visualize CO₂ Bands

% Check if any CO₂ bands were found
if isempty(co2_nir_indices) && isempty(co2_swir_indices)
    error('No CO₂ bands found within the specified ranges.');
end
