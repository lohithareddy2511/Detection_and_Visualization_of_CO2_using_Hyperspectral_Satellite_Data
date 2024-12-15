% Visualize the first NIR CO₂ band if available
if ~isempty(co2_nir_indices)
    co2_nir_band = bands(:, :, co2_nir_indices(1));
    figure;
    imagesc(co2_nir_band);
    colorbar;
    title(['NIR CO₂ Band at ', num2str(wavelengths(co2_nir_indices(1))), ' nm']);
end

% Visualize the first SWIR CO₂ band if available
if ~isempty(co2_swir_indices)
    co2_swir_band = bands(:, :, co2_swir_indices(1));
    figure;
    imagesc(co2_swir_band);
    colorbar;
    title(['SWIR CO₂ Band at ', num2str(wavelengths(co2_swir_indices(1))), ' nm']);
end


