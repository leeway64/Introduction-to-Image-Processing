% By Lee-Way Wang
% This function detects the edge of an image and outputs the edge-only
% image

% Inputs -
% image_file_name (string): the name of the image without the file type extension 
% image_file_type (string): the name of the image's file type (jpg, png,
% etc.)
% show_figures (boolean): determines whether or not to show plots

% Returns -
% result: pixel matrix of the edge-only image
% Depending on user input, this function can also show the grayscale image
% and plots of the row gradient, column gradient, and the magnitude of the
% row/column gradients

function result = detect_image_edge(image_file_name, image_file_type,...
    show_figures)
    
    image = imread(image_file_name, image_file_type);
    image = rgb2gray(image);  % Convert input to 8-bit gray scale image
    
    vertical_edge_mask = [-1, 0, 1; -2, 0, 2; -1, 0, 1];
    horizontal_edge_mask = [1, 2, 1; 0, 0, 0; -1, -2, -1];

    row_gradient = conv2(image, vertical_edge_mask);
    column_gradient = conv2(image, horizontal_edge_mask);
    
    edge_only_image = sqrt((abs(row_gradient).^2) + (abs(column_gradient).^2));
    
    class_image = class(image);  % Returns name of class of image
    result = cast(abs(edge_only_image), class_image);
    
    if (show_figures)
        
        figure
        imshow(image);  % Show image
        title([image_file_name, ' image (grayscale)']);
        size_of_image = size(image);
        
        figure
        subplot(3, 1, 1)
        plot(abs(row_gradient));
        title('Row gradient (convolution of vertical edge mask and image)');

        subplot(3, 1, 2)
        plot(abs(column_gradient));
        title('Column gradient (convolution of horizontal edge mask and image)');

        subplot(3, 1, 3)
        plot(abs(edge_only_image));
        title('Magnitude of column/row gradients');

    end

end