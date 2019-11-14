# mfccExtraction
This program creates and displays Mel-frequency cepstral coefficients for a given input signal. </br>

mfccMain()
  - Displays Mel-scaled frequency of input signal
  - Creates and displays MFCC matrix of input signal freqToMel(numMel, numFFT, fs)
  - Maps frequencies to mel scale
  - Creates a matrix for dot product operation with DFT of windowed signal Arguments:

  parameters: </br>
    fs: sample rate of signal to be converted </br>
    numMel: number of desired frequencies in the mel bank </br>
    numFFT: number of FFT points in the spectrum to be converted </br>
  
freqToMel(numMel, N, fs)
  - Scales Hertz-based frequencies to Mels
  
  parameters:</br>
    numMel: number of frequencies in the mel bank </br>
    N: number of FFT points in the spectrum to be converted </br>
    fs: sample rate of signal to be converted </br>
    
myMFCC(numCoeff, numMel, x, fs, numFFT)
  - Obtains power spectrum of windowed signal
  - Maps frequencies in window to mel scale
  - Takes the log of that window
  - Extracts major peaks in window
  - Performs Discrete Cosine Transform
  - Place power spectrum in element 1 of DCT matrix
  - Progressively stores processed windows in an MFCC matrix Arguments:
  
  parameters: </br>
    <dl>x: input signal </br>
    fs: sample rate </br>
    numCoeff: desired number of MFCC coefficients </br>
    numMel: number of filters in the mel filter bank </br>
    numFFT: number of FFT points to be used per frame </br>
