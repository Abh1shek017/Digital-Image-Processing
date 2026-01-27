# Bit Plane Slicing & Removal – Digital Image Processing

## Overview
This experiment performs **Bit Plane Slicing** on a grayscale image to visualize the contribution of each bit (0 to 7) to the total image intensity. It also demonstrates **Bit Plane Removal**, showing the effect of zeroing out specific bit planes on image quality.

## Process Flow

### 1. Image Acquisition & Preprocessing
- The input image is read from the file system.
- If the image is RGB, it is converted to grayscale to process intensity values.
- Image dimensions (rows, columns) are retrieved.

### 2. Bit Plane Slicing
- Each pixel intensity is an 8-bit integer ($0-255$), represented by bits $b_0$ to $b_7$.
- Individual bit planes are extracted using the **Bitwise AND** operation.
  - Plane 0 (LSB): `bitand(I, 1)`
  - Plane 7 (MSB): `bitand(I, 128)`
- All 8 bit plane images are generated.

### 3. Bit Plane Removal
- Specific bit planes are selectively removed to observe their visual impact.
- In this experiment, the **0th (LSB)**, **5th**, and **7th (MSB)** planes are removed.
- Removal is performed using a mask: `bitand(I, 255 - 2^k)`.

### 4. Result Visualization
- The **Original Grayscale Image** is displayed.
- Each of the **8 extracted Bit Planes** is shown separately.
- Images resulting from **removing specific bit planes** are displayed for comparison.
- Higher order bits (MSB) contain the most significant visual information.

## Technologies Used
- MATLAB
- Bitwise Logic Operations (`bitand`)

## Folder Structure
- `Bit_Slicing.m`: Main MATLAB script.
- `Original_Image.jpg`: Sample input image for testing.
- `Output/`: (Optional) Folder storing result images.
