# Digital Image Processing (DIP) Laboratory Work

## Repository Description
This repository maintains a collection of practical implementations and lab exercises related to Digital Image Processing (DIP). The work included here reflects hands-on experimentation with image processing concepts studied during the course.

## Scope of Work
The experiments focus on applying computational techniques to process and analyze digital images. Each task emphasizes understanding how theoretical principles are implemented in practice.

## Key Areas Explored
- Digital image fundamentals and representation
- Image enhancement and contrast improvement
- Spatial domain operations
- Basic filtering techniques
- Image transformation methods
- Edge detection and simple analysis

## Experiments List

### 1. Basic Image Operations
**Directory:** [Basics_of_Image_Processing](./Basics_of_Image_Processing)
- **Overview:** Introduction to digital image processing using MATLAB.
- **Key Operations:**
    - Random matrix generation (simulating images).
    - Image reading and display.
    - RGB to Grayscale conversion.
    - Color channel extraction (Red, Green, Blue).
    - Binary image generation (Thresholding).
    - Basic Histogram Equalization.

### 2. Histogram Equalization (Manual Implementation)
**Directory:** [Histogram_Equalisation](./Histogram_Equalisation)
- **Overview:** Step-by-step manual implementation of histogram equalization without using built-in functions.
- **Key Steps:**
    - Histogram computation.
    - Probability Density Function (PDF) calculation.
    - Cumulative Distribution Function (CDF) calculation.
    - Intensity mapping and normalization.
    - Visualizing results (Histograms and CDF plots).

### 3. Bit Plane Slicing & Removal
**Directory:** [Bit_Slicing](./Bit_Slicing)
- **Overview:** Visualization of individual bit planes and the effect of removing them on image quality.
- **Key Operations:**
    - Bitwise AND slicing for planes 0-7.
    - Reconstruction of specific bit planes.
    - Analysis of MSB vs LSB contribution.

### 4. Huffman Coding Compression
**Directory:** [Huffman_Coding](./Huffman_Coding)
- **Overview:** Implementation of lossless image compression using Huffman coding techniques.
- **Key Steps:**
    - Probability calculation of pixel intensities.
    - Huffman dictionary generation.
    - Binary encoding and decoding.
    - Compression ratio analysis.

### 5. Shannon Coding Compression
**Directory:** [Shannon Coding](./Shannon%20Coding)
- **Overview:** Image compression using Shannon coding based on symbol probability and cumulative distribution.
- **Key Steps:**
    - Symbol extraction and sorting.
    - Code length calculation using Shannon's formula.
    - Binary code generation from cumulative probabilities.
    - Encoding and performance evaluation.

### 6. Tambola Ticket Generator
**Directory:** [Tambola Ticket](./Tambola%20Ticket)
- **Overview:** Algorithmic generation of a valid 3x9 Tambola (Housie) ticket with structural constraints.
- **Key Logic:**
    - Random structural matrix generation (5 numbers/row, 1-3/col).
    - Column-wise number assignment (e.g., Col 1: 1-9, Col 2: 10-19).
    - Column sorting and final ticket validation.

## Technologies Used
- MATLAB
- Image processing libraries and functions

## Folder Organization
Each experiment is organized in a separate directory containing:
- Source code
- Sample input images
- Output results

## Purpose
The purpose of this repository is to strengthen practical understanding of Digital Image Processing concepts and to serve as a reference for laboratory-based learning.

> **Note**: This repository is intended for educational use only and represents academic laboratory work.

## Author
Abhishek