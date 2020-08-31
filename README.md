# Introduction to Image Processing
This project served as a primer into image processing. In this project, I learned how to detect the edges of an image, how to scale an image up or down in size, and also how to flip or rotate an image.

I would like to give credit to UW Bothell professor Dr. Tadesse Ghirmai for providing the specifications for this project.

# Summary of MATLAB Functions
There are 5 .m MATLAB function files included in this project. These functions will be elaborated upon in this section.

## Edge detection
detect_image_edge.m detects the edges of a given input image and displays the resulting edge-only image. Edge detection is implemented by convolving the input image with a mask, which is a 2 dimensional matrix.
