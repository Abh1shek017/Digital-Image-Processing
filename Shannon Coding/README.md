# Image Compression using Shannon Coding – Digital Image Processing

## Overview
This experiment demonstrates **Lossless Image Compression** using **Shannon Coding**. The program processes a grayscale image, calculates pixel probabilities, generates symbol codes based on cumulative probabilities, encodes the image, and computes the compression ratio.

## Process Flow

### 1. Image Acquisition & Preprocessing
- The RGB input image is read and converted to grayscale.
- The 2D image matrix is converted (flattened) into a 1D column vector for processing.

### 2. Probability Calculation
- Identify unique pixel intensity values (0–255).
- Count the frequency of each intensity value.
- Compute the probability of each pixel value:
  - $P(r_k) = \frac{\text{count}(r_k)}{\text{Total Pixels}}$

### 3. Shannon Code Generation
- Sort symbols in descending order of probability.
- Determine code length for each symbol: $L_i = \lceil -\log_2(P_i) \rceil$.
- Generate binary codes using the cumulative probability approach.

### 4. Encoding
- **Encoding**: Each pixel in the image is replaced by its corresponding Shannon code to generate the compressed bit stream.

### 5. Reconstruction & Analysis
- **Compression Ratio** is calculated:
  - $\text{Compression Ratio} = \frac{\text{Original Bits}}{\text{Compressed Bits}}$
- The Original and Reconstructed images are displayed.

## Technologies Used
- MATLAB
- Shannon Coding Algorithm Logic

## Folder Structure
- `Shannon_Coding.m`: Main MATLAB script.
- `Image.jpg`: Sample input image for testing.
- `Output/`: (Optional) Folder storing result images.
