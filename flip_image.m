% This function can flip an image left-to-right, top-to-bottom, or both
% (rotates image 90 degrees counterclockwise).

% Inputs -
% image_file_name (string): the name of the image without the file type
% extension 
% image_file_type (string): the name of the image's file type (jpg, png,
% etc.)
% flip_direction (string): the direction that the image should be flipped
% ('lr', 'ud', or 'both')

% Returns - 
% result: pixel matrix of the flipped image. If an invalid flip_direction
% is specified, then the original image's pixel matrix is returned.

function result = flip_image(image_file_name, image_file_type,...
    flip_direction)

    image = imread(image_file_name, image_file_type);
    image = rgb2gray(image);  % Convert input to 8-bit gray scale image
    result = image;

    if strcmp(flip_direction, 'lr')
        result = fliplr(image);  % Flip image left-to-right
    elseif strcmp(flip_direction, 'ud')
        result = flipud(image);  % Flip image top-to-bottom
    elseif strcmp(flip_direction, 'both')
        % Rotates an image 90 degrees counterclockwise
        result = fliplr(flipud(image));

    end
    
    class_image = class(image);  % Returns name of class of image
    result = cast(abs(result), class_image);

end