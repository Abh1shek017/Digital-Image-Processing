%------------------------------------------------------------
% Date        : 26/01/2026
% Created by  : Abhishek Kumar Jayswal
% Experiment  : Bit Plane Slicing and Bit Plane Removal
% Description :
%   This program performs bit plane slicing on a grayscale
%   image and visualizes individual bit planes (0 to 7).
%   It also demonstrates the effect of removing selected
%   bit planes from the original image.
%------------------------------------------------------------

clc;            % Clear command window
clear all;      % Remove all variables from workspace
close all;      % Close all open figure windows

%------------------ Read and Display Original Image ------------------
I = rgb2gray(imread('C:\Users\Abhishek\Desktop\DIP\Bit_Slicing\Original_Image.jpg'));   % Convert RGB image to grayscale
[m, n] = size(I);                          % Get image dimensions

figure;
imshow(I);
title('Original Grayscale Image');

%------------------ Bit Plane Slicing ------------------
% Each bit plane represents a specific bit (0 to 7) of
% the grayscale image intensity values.

% Pre-allocate matrices for efficiency
Bitp0 = zeros(m,n);
Bitp1 = zeros(m,n);
Bitp2 = zeros(m,n);
Bitp3 = zeros(m,n);
Bitp4 = zeros(m,n);
Bitp5 = zeros(m,n);
Bitp6 = zeros(m,n);
Bitp7 = zeros(m,n);

% Extract individual bit planes using bitwise AND operation
for ii = 1:m
    for jj = 1:n
        Bitp0(ii,jj) = bitand(I(ii,jj), 1);     % 0th bit plane (LSB)
        Bitp1(ii,jj) = bitand(I(ii,jj), 2);     % 1st bit plane
        Bitp2(ii,jj) = bitand(I(ii,jj), 4);     % 2nd bit plane
        Bitp3(ii,jj) = bitand(I(ii,jj), 8);     % 3rd bit plane
        Bitp4(ii,jj) = bitand(I(ii,jj), 16);    % 4th bit plane
        Bitp5(ii,jj) = bitand(I(ii,jj), 32);    % 5th bit plane
        Bitp6(ii,jj) = bitand(I(ii,jj), 64);    % 6th bit plane
        Bitp7(ii,jj) = bitand(I(ii,jj), 128);   % 7th bit plane (MSB)
    end
end

%------------------ Display Bit Planes ------------------
figure; imshow(Bitp0); title('0th Bit Plane Image');
figure; imshow(Bitp1); title('1st Bit Plane Image');
figure; imshow(Bitp2); title('2nd Bit Plane Image');
figure; imshow(Bitp3); title('3rd Bit Plane Image');
figure; imshow(Bitp4); title('4th Bit Plane Image');
figure; imshow(Bitp5); title('5th Bit Plane Image');
figure; imshow(Bitp6); title('6th Bit Plane Image');
figure; imshow(Bitp7); title('7th Bit Plane Image');

%------------------ Bit Plane Removal ------------------
% In this section, selected bit planes are removed from the
% original image to observe their impact on image quality.
% Bit planes removed: 0th, 5th, and 7th

bitpr0 = zeros(m,n);
bitpr5 = zeros(m,n);
bitpr7 = zeros(m,n);

for ii = 1:m
    for jj = 1:n
        bitpr0(ii,jj) = bitand(I(ii,jj), 255 - 2^0);   % Remove 0th bit plane
        bitpr5(ii,jj) = bitand(I(ii,jj), 255 - 2^5);   % Remove 5th bit plane
        bitpr7(ii,jj) = bitand(I(ii,jj), 255 - 2^7);   % Remove 7th bit plane
    end
end

%------------------ Display Images after Bit Plane Removal ------------------
figure; imshow(bitpr0); title('Image with 0th Bit Plane Removed');
figure; imshow(bitpr5); title('Image with 5th Bit Plane Removed');
figure; imshow(bitpr7); title('Image with 7th Bit Plane Removed');
