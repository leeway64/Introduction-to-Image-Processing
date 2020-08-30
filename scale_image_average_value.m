% This function scales down an image by a factor of S by finding the
% average value of a square of a side length of S pixels

% Inputs - 
% image_file_name (string): the name of the image without the file type extension 
% image_file_type (string): the name of the image's file type (jpg, png,
% etc.)
% S (integer): scaling factor

% Returns - 
% result: pixel matrix of the scaled image


function result = scale_image_average_value(image_file_name,...
    image_file_type, S)

    image = imread(image_file_name, image_file_type);
    image = rgb2gray(image);  % Convert input to 8-bit gray scale image
    
    old_rows = size(image, 1);
    old_columns = size(image, 2);

    new_rows = ceil(old_rows / S);
    new_columns = ceil(old_columns / S);

    result = zeros(new_rows, new_columns);

    for i = 0:new_rows - 1
        for j = 0:new_columns - 1
            if (old_rows < (i+1)*S) && (old_columns < (j+1)*S)
                result(i+1,j+1) = mean(mean(image(i*S+1:end, j*S+1:end)));

            elseif (old_rows < (i+1)*S)
                result(i+1,j+1) = mean(mean(image(i*S+1:end,...
                    j*S+1:(j+1)*S)));

            elseif (old_columns < (j+1)*S)
                result(i+1,j+1) = mean(mean(image(i*S+1:(i+1)*S,...
                j*S+1:end)));

            else
                result(i+1,j+1) = mean(mean(image(i*S+1:(i+1)*S,...
                    j*S+1:(j+1)*S)));
            end

        end
    end
    
    class_image = class(image);  % Returns name of class of image
    result = cast(abs(result), class_image);
    
end