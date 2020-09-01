# Introduction to Image Processing
This project served as a primer into image processing. In this project, I learned how to detect the edges of an image, how to scale an image up or down in size, and also how to flip or rotate an image.

All images are operated on in the grayscale domain. In other words, each pixel value ranges from 0 (black) to 255 (white).


I would like to give credit to UW Bothell professor Dr. Tadesse Ghirmai for providing the specifications for this project.

# Summary of MATLAB functions
There are 5 .m MATLAB function files included in this project. These functions will be elaborated upon in this section.
The image under examination is the album cover for David Bowie's Heroes.

![David Bowie Heroes](https://github.com/leeway64/Introduction-to-Image-Processing/blob/master/Demonstration%20images/David%20Bowie%20Heroes.jpg)


## Edge detection
detect_image_edge.m detects the edges of a given input image and displays the resulting edge-only image. Edge detection is implemented by convolving the input image with a mask, which is a 2 dimensional matrix.
![Edge-only image](https://github.com/leeway64/Introduction-to-Image-Processing/blob/master/Demonstration%20images/David%20Bowie%20Heroes%20(edge-only).jpg)

## Image scaling
Scaling an image down in size is useful for creating video thumbnails. Two methods for scaling an image down are investigated here.


### Image scaling by removing pixels
Image scaling, in this case, is accomplished by keeping the center pixel and removing the other pixels of a square of pixels.
![Pixel removal](https://github.com/leeway64/Introduction-to-Image-Processing/blob/master/Demonstration%20images/David%20Bowie%20Heroes%20(image%20scaled%20down%20by%20a%20factor%20of%203%2C%20pixel%20removal%20method).jpg)

### Image scaling by finding the average pixel value
A method much better suited for maintaining fidelity is to find the average pixel value in a square of pixels.
![Average pixel value](https://github.com/leeway64/Introduction-to-Image-Processing/blob/master/Demonstration%20images/David%20Bowie%20Heroes%20(image%20scaled%20down%20by%20a%20factor%20of%203%2C%20average%20value%20method).jpg)

## Image flipping
flip_image.m flips an input image left to right, top to bottom, or rotates it 90 degrees counterclockwise.
![Left to right](https://github.com/leeway64/Introduction-to-Image-Processing/blob/master/Demonstration%20images/David%20Bowie%20Heroes%20((left-to-right%20flip)).jpg)
![Top to bot](https://github.com/leeway64/Introduction-to-Image-Processing/blob/master/Demonstration%20images/David%20Bowie%20Heroes%20((top-to-bottom%20flip)).jpg)
![Both](https://github.com/leeway64/Introduction-to-Image-Processing/blob/master/Demonstration%20images/David%20Bowie%20Heroes%20((90%20degree%20counterclockwise%20rotation)).jpg)

## Image interpolation
When scaling an image up in size, something has to be done with the spaces between the pixels. To account for these spaces, the average values of the adjacent pixels is substituted into the new spaces.
![Image interpolation](https://github.com/leeway64/Introduction-to-Image-Processing/blob/master/Demonstration%20images/David%20Bowie%20Heroes%20(scaled%20up%20by%20a%20factor%20of%202%20(linear%20interpolation%20method)).jpg)
