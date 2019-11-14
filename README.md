# mfccExtraction
This program creates and displays Mel-frequency cepstral coefficients for a given input signal. </br>

mfccMain()
  - Displays Mel-scaled frequency of input signal
  - Creates and displays MFCC matrix of input signal freqToMel(numMel, numFFT, fs)
  - Maps frequencies to mel scale
  - Creates a matrix for dot product operation with DFT of windowed signal Arguments:
    
myMFCC(numCoeff, numMel, x, fs, numFFT)
  - Obtains power spectrum of windowed signal
  - Maps frequencies in window to mel scale
  - Takes the log of that window
  - Extracts major peaks in window
  - Performs Discrete Cosine Transform
  - Place power spectrum in element 1 of DCT matrix
  - Progressively stores processed windows in an MFCC matrix Arguments:
  
  &nbsp;&nbsp;&nbsp; parameters: </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; x: input signal </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fs: sample rate </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; numCoeff: desired number of MFCC coefficients </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; numMel: number of filters in the mel filter bank </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; numFFT: number of FFT points to be used per frame </br>

freqToMel(numMel, N, fs)
  - Scales Hertz-based frequencies to Mels
  
  &nbsp;&nbsp;&nbsp; parameters:</br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; numMel: number of frequencies in the mel bank </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; N: number of FFT points in the spectrum to be converted </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fs: sample rate of signal to be converted </br>
