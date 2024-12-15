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


%% Step 5: Optional - Save CO₂ Band Images

% Save NIR CO₂ band image if available
if exist('co2_nir_band', 'var')
    outputNirFile = 'co2_nir_band_image.mat';
    save(outputNirFile, 'co2_nir_band');
    disp(['NIR CO₂ band image saved to ', outputNirFile]);
end

% Save SWIR CO₂ band image if available
if exist('co2_swir_band', 'var')
    outputSwirFile = 'co2_swir_band_image.mat';
    save(outputSwirFile, 'co2_swir_band');
    disp(['SWIR CO₂ band image saved to ', outputSwirFile]);
end

% Visualize NIR CO₂ band with 'jet' colormap
figure;
imagesc(co2_nir_band);
colormap(jet);  % Apply 'jet' colormap
colorbar;
title('NIR CO₂ Band at 1572.381 nm');
xlabel('Pixel X');
ylabel('Pixel Y');

% Visualize SWIR CO₂ band with 'parula' colormap
figure;
imagesc(co2_swir_band);
colormap(parula);  % Apply 'parula' colormap
colorbar;
title('SWIR CO₂ Band at 2008.315 nm');
xlabel('Pixel X');
ylabel('Pixel Y');

% Example calibration parameters (you need real data to refine these)
scalingFactor = 0.1;  % Example scaling factor
offset = 350;         % Example baseline CO₂ concentration in ppm

% Convert NIR band to CO₂ concentration
co2_nir_ppm = co2_nir_band * scalingFactor + offset;

% Convert SWIR band to CO₂ concentration
co2_swir_ppm = co2_swir_band * scalingFactor + offset;

% Visualize CO₂ concentration (NIR)
figure;
imagesc(co2_nir_ppm);
colormap(turbo);
colorbar;
title('Estimated CO₂ Concentration (ppm) - NIR Band');
xlabel('Pixel X');
ylabel('Pixel Y');

% Visualize CO₂ concentration (SWIR)
figure;
imagesc(co2_swir_ppm);
colormap(turbo);
colorbar;
title('Estimated CO₂ Concentration (ppm) - SWIR Band');
xlabel('Pixel X');
ylabel('Pixel Y');




