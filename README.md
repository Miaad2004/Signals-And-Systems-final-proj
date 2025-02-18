# Project Overview
This repository contains the final project for the **Signals and Systems** course at university of isfahan. The project consists of three MATLAB-based assignments focusing on signal processing and image processing.

## Project 1: Audio Signal Filtering
This project processes an audio signal with noise and applies a low-pass filter to remove high-frequency noise.

### Features
- Loads a noisy audio signal (`Sound.mat`).
- Computes and visualizes the frequency spectrum of the signal.
- Designs a low-pass filter using MATLAB’s `fdatool`.
- Applies the filter to the signal and generates a cleaned audio file (`Filtered_Sound.wav`).
- Visualizes the filtered signal in both time and frequency domains.

---

## Project 2: Image Denoising Using Median Filter
This project applies median filtering to remove salt-and-pepper noise from a given image.

### Features
- Reads and displays the noisy image.
- Applies median filtering with different kernel sizes (3×3, 5×5, 7×7, 9×9).
- Determines the best filtering result based on visual quality.
- Compares the effects of different filter sizes.
  
![Mask Comparison](https://github.com/Miaad2004/Signals-And-Systems-final-proj/blob/main/src/part2/Resources/MaskComparison.jpg?raw=true)    

---

## Project 3: Image Quantization
This project reduces the number of intensity levels in a grayscale image to simulate different bit-depth representations.

### Features
- Reads an image and converts it to grayscale if necessary.
- Computes image properties (dimensions, bit-depth, data type).
- Applies quantization with different intensity levels (64, 32, 16, 8, 4, and 2 levels).
- Visualizes the effects of quantization.

![quants](https://github.com/Miaad2004/Signals-And-Systems-final-proj/blob/main/src/part3/Resources/quants.jpg?raw=true)  


## Contributors
- [Mahdi Rahbar](https://github.com/Mahdi-Rahbar)
- [Miaad Kimigari](https://github.com/Miaad2004)
- [Amir Taha Najaf](https://github.com/taha-najaf)
