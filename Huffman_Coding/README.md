# Image Compression using Huffman Coding – Digital Image Processing

## Overview
This experiment demonstrates **Lossless Image Compression** using **Huffman Coding**. The program processes a grayscale image, calculates pixel probabilities, builds a Huffman dictionary, encodes the image, and then decodes it back to its original form. It finally computes the compression ratio.

## Process Flow

### 1. Image Acquisition & Preprocessing
- The RGB input image is read and converted to grayscale.
- The 2D image matrix is converted (flattened) into a 1D column vector for processing.

### 2. Probability Calculation
- Identify unique pixel intensity values (0–255).
- Count the frequency of each intensity value.
- Compute the probability of each pixel value:
  - $P(r_k) = \frac{\text{count}(r_k)}{\text{Total Pixels}}$

### 3. Huffman Dictionary Creation
- A Huffman dictionary is generated using the calculated probabilities and pixel values (`huffmandict`).
- This maps each pixel intensity to a variable-length binary code.

### 4. Encoding & Decoding
- **Encoding**: The image data is compressed into a binary bit stream using the Huffman dictionary (`huffmanenco`).
- **Decoding**: The binary stream is decoded back to the original pixel values (`huffmandeco`).

### 5. Reconstruction & Analysis
- The decoded 1D data is reshaped back into the original 2D image dimensions.
- **Compression Ratio** is calculated:
  - $\text{Compression Ratio} = \frac{\text{Original Bits}}{\text{Compressed Bits}}$
- The Original and Reconstructed images are displayed to verify lossless compression.

## Technologies Used
- MATLAB
- Huffman Coding Functions (`huffmandict`, `huffmanenco`, `huffmandeco`)

## Folder Structure
- `Huffman_Coding.m`: Main MATLAB script.
- `Original_Image.jpg`: Sample input image for testing.
- `Output/`: (Optional) Folder storing result images.
