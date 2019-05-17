% Read input signal for demonstration
[x, fs] = audioread('clarinet22.au');

% Initial parameters
% Desired number of Mel coefficients
numCoeff = 14;

% Number of mel banks
numMel = 40;

% Number of FFT points
numFFT = 1024;

% Create mel matrix for demonstration
signalScaled = freqToMel(3000, numFFT, fs) * abs(spectrogram(x,numFFT));

% Compute MFCC matrix 
mfccMat = myMFCC(numCoeff, numMel, numFFT, x, fs);

% Display Frequencies on mel scale
subplot(2,1,1);
imagesc(signalScaled);

% Display MFCC Spectrogram
subplot(2,1,2);
imagesc(mfccMat);