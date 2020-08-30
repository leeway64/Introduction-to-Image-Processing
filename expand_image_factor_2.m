% This function expands an image by a factor of 2 through linear
% interpolation

% Inputs - 
% image_file_name (string): the name of the image without the file type
% extension 
% image_file_type (string): the name of the image's file type (jpg, png,
% etc.)

% Returns -
% result: pixel matrix of the scaled image


function result = expand_image_factor_2(image_file_name, image_file_type)
    
    image = imread(image_file_name, image_file_type);
    image = rgb2gray(image);  % Convert input to 8-bit gray scale image
    
    % interp2 takes in as input a single or double type matrix
    % Need to cast the image into a double
    result = interp2(cast(image, 'double')); 
    
    class_image = class(image);  % Returns name of class of image
    result = cast(abs(result), class_image);
    
end