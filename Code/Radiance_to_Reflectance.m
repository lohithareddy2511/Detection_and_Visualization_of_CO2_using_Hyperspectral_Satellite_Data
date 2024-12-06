radiance_band1 = radiance_mult_band(1) * band1 + radiance_add_band(1);
radiance_band2 = radiance_mult_band(2) * band2 + radiance_add_band(2);
radiance_band3 = radiance_mult_band(3) * band3 + radiance_add_band(3);
radiance_band4 = radiance_mult_band(4) * band4 + radiance_add_band(4);
radiance_band5 = radiance_mult_band(5) * band5 + radiance_add_band(5);
radiance_band6 = radiance_mult_band(6) * band6 + radiance_add_band(6);
radiance_band7 = radiance_mult_band(7) * band7 + radiance_add_band(7);
radiance_band9 = radiance_mult_band(8) * band9 + radiance_add_band(8);


reflectance_band1 = (pi * radiance_band1 * d^2) / (ESUN(1) * cosd(90 - sun_elevation));
reflectance_band2 = (pi * radiance_band2 * d^2) / (ESUN(2) * cosd(90 - sun_elevation));
reflectance_band3 = (pi * radiance_band3 * d^2) / (ESUN(3) * cosd(90 - sun_elevation));
reflectance_band4 = (pi * radiance_band4 * d^2) / (ESUN(4) * cosd(90 - sun_elevation));
reflectance_band5 = (pi * radiance_band5 * d^2) / (ESUN(5) * cosd(90 - sun_elevation));
reflectance_band6 = (pi * radiance_band6 * d^2) / (ESUN(6) * cosd(90 - sun_elevation));
reflectance_band7 = (pi * radiance_band7 * d^2) / (ESUN(7) * cosd(90 - sun_elevation));
reflectance_band9 = (pi * radiance_band9 * d^2) / (ESUN(8) * cosd(90 - sun_elevation));


dataCube = cat(3, reflectance_band1, reflectance_band2, reflectance_band3, reflectance_band4, ...
                  reflectance_band5, reflectance_band6, reflectance_band7, reflectance_band9);

