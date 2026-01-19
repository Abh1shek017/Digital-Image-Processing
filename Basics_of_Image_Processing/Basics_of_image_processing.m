%% environment Setup
close all;  % Closes all open figure windows to clear the screen
clear;      % Deletes all variables from the workspace to prevent data overlap
clc;        % Clears the command window text for a clean output

%% Image Acquisition
% imread reads the image file into a matrix 'I'
% 'I' will be an M x N x 3 matrix for a standard RGB color image
I = imread('C:\Users\Abhishek\Desktop\DIP\Basics_of_Image_Processing\image.jpg');

%% Original Image Display
imshow(I);  % Renders the color image in the current figure window
title('Original RGB Image'); % Recommended: adds a title to identifying the window
figure();   % Creates a new figure window so the next image doesn't overwrite this one

%% Grayscale Conversion
% rgb2gray uses a weighted sum (0.2989*R + 0.5870*G + 0.1140*B) 
% to convert the 3-layer color image into a single intensity layer
Igr = rgb2gray(I);
imshow(Igr);
title('Grayscale Image');

%% Red Channel Extraction
% We copy the original image to keep it intact, then modify the copy
Ired = I; 
figure();

% In an RGB matrix, index 1 is Red, 2 is Green, and 3 is Blue.
% Setting layers 2 and 3 to 0 effectively "mutes" the green and blue
Ired(:,:,2) = 0; % Sets the Green channel intensity to zero for all pixels
Ired(:,:,3) = 0; % Sets the Blue channel intensity to zero for all pixels

% The result is an image where only the Red light data is displayed
imshow(Ired);
title('Red Channel Only');
figure();

%% Image Binarization (Thresholding)
% This creates a logical matrix (Binary Image). 
% If a pixel value in Igr is > 127, it becomes 1 (White).
% If it is 127 or lower, it becomes 0 (Black).
Ib = Igr > 127; 
imshow(Ib);
title('Binary Image (Threshold = 127)');

%% Histogram Equalization
figure();
% histeq spreads out the most frequent intensity values.
% It increases the global contrast of the image, especially when 
% the usable data is represented by close contrast values.
Ieq = histeq(Igr);

% Display the final contrast-enhanced grayscale image
imshow(Ieq);
title('Histogram Equalized Image');