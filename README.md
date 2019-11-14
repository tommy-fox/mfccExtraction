# mfccExtraction
This program creates and displays Mel-frequency cepstral coefficients for a given input signal. 

mfccMain()
  - Displays Mel-scaled frequency of input signal
  - Creates and displays MFCC matrix of input signal freqToMel(numMel, numFFT, fs)
  - Maps frequencies to mel scale
  - Creates a matrix for dot product operation with DFT of windowed signal Arguments:

  parameters:
    fs: sample rate of signal to be converted
    numMel: number of desired frequencies in the mel bank 
    numFFT: number of FFT points in the spectrum to be converted 
  
myMFCC(numCoeff, numMel, x, fs, numFFT)
  - Obtains power spectrum of windowed signal
  - Maps frequencies in window to mel scale
  - Takes the log of that window
  - Extracts major peaks in window
  - Performs Discrete Cosine Transform
  - Place power spectrum in element 1 of DCT matrix
  - Progressively stores processed windows in an MFCC matrix Arguments:
  
  parameters:
    x: input signal
    fs: sample rate
    numCoeff: desired number of MFCC coefficients 
    numMel: number of filters in the mel filter bank
    numFFT: number of FFT points to be used per frame 
