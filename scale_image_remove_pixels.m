% This function scales an image down by a factor of S by removing pixels

% Inputs - 
% image_file_name (string): the name of the image without the file type extension 
% image_file_type (string): the name of the image's file type (jpg, png,
% etc.)
% S (integer): scaling factor

% Returns -
% result: pixel matrix of the scaled image

function result = scale_image_remove_pixels(image_file_name,...
    image_file_type, S)

    image = imread(image_file_name, image_file_type);
    image = rgb2gray(image);  % Convert input to 8-bit gray scale image
    
    if (mod(S, 2) == 0)
        result = image(0.5*S:S:end, 0.5*S:S:end);
    else
        result = image(0.5*S+0.5:S:end, 0.5*S+0.5:S:end);
    end
    
end