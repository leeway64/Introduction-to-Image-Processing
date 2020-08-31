# Introduction to Image Processing
This project served as a primer into image processing. In this project, I learned how to detect the edges of an image, how to scale an image up or down in size, and also how to flip or rotate an image.

All images are operated on in the grayscale domain. In other words, each pixel value ranges from 0 (black) to 255 (white).


I would like to give credit to UW Bothell professor Dr. Tadesse Ghirmai for providing the specifications for this project.

# Summary of MATLAB functions
There are 5 .m MATLAB function files included in this project. These functions will be elaborated upon in this section.

## Edge detection
detect_image_edge.m detects the edges of a given input image and displays the resulting edge-only image. Edge detection is implemented by convolving the input image with a mask, which is a 2 dimensional matrix.


## Image scaling
Scaling an image down in size is useful for creating video thumbnails. Two methods for scaling an image down are investigated here.


### Image scaling by removing pixels
Image scaling, in this case, is accomplished by keeping the center pixel and removing the other pixels of a square of pixels.


### Image scaling by finding the average pixel value
A method much better suited for maintaining fidelity is to find the average pixel value in a square of pixels.


## Image flipping
flip_image.m flips an input image left to right, top to bottom, or rotates it 90 degrees counterclockwise.


## Image interpolation
When scaling an image up in size, something has to be done with the spaces between the pixels. To account for these spaces, the average values of the adjacent pixels is substituted into the new spaces.
