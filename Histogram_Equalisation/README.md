# Histogram Equalization – Digital Image Processing

## Overview
This experiment performs **Histogram Equalization** on digital images to enhance contrast. The implementation is done manually in MATLAB without using built-in functions like `histeq` to demonstrate the underlying mathematical process.

## Process Flow

### 1. Image Acquisition & Preprocessing
- The input image is read from the file system.
- If the image is RGB, it is converted to grayscale to process intensity values.
- The image is converted to `uint8` format.

### 2. Computing Histogram
- A frequency count of each pixel intensity (0–255) is computed.
- This represents the distribution of pixel intensities in the original image.

### 3. Computing Probability Density Function (PDF)
- The histogram is normalized by dividing pixel counts by the total number of pixels.
- $PDF(r_k) = \frac{n_k}{MN}$

### 4. Computing Cumulative Distribution Function (CDF)
- The cumulative sum of the PDF is calculated.
- $CDF(r_k) = \sum_{j=0}^{k} PDF(r_j)$

### 5. Normalization & Mapping
- The CDF is normalized to the range [0, 255].
- New pixel values are assigned by mapping original intensities to the normalized CDF values.
- $s_k = round(CDF(r_k) \times 255)$

### 6. Result Visualization
- The **Original Image** and its **Histogram/CDF** are displayed.
- The **Equalized Image** and its **Histogram/CDF** are displayed for comparison.
- The equalized histogram typically shows a more uniform distribution, indicating improved contrast.

## Technologies Used
- MATLAB
- Basic array operations (loops, indexing)

## Folder Structure
- `Histogarm_Equalisation.m`: Main MATLAB script.
- `Input_Image.jpg`: Sample input image for testing.
- `Outputs/`: (Optional) Folder storing result images.
