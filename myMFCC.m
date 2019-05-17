% Function to compute MFCC matrix
function mfccMatrix = myMFCC(numCoeff, numMel, numFFT, x, fs)  

% Arguments:
% numCoeff: desired number of MFCC coefficients
% numMel: number of filters in the mel filter bank
% numFFT: number of FFT points to be used per frame 
% x: input signal
% fs: sample rate

% Frame duration in seconds
windowLen = 0.025;

% Number of samples per frame
frameLen = floor(fs*windowLen);

% Duration of signal
L = length(x);

% Frame step in samples (seconds * fs)
frameStep = 0.01 * fs; 

% Maximum number of frames in signal
numFrames = floor(L/frameStep);    

% Matrix to hold cepstral coefficients
mfccMatrix = zeros(numFrames-2, numCoeff);

% Compute half the FFT length
halfFFT = 1+floor(numFFT/2); 

% Filter coefficient for high frequency accentuation
coeff = .95;

% Create mel scale matrix
mels = freqToMel(numMel, numFFT, fs);

    % Window signal, overlap frames, and compute MFCC coefficients
    for i = 1:numFrames-2

        % Frame signal
        frame = x((i-1)*frameStep+1:(i-1)*frameStep+frameLen);

        % Log of energy in frame
        energy = log10(sum(1.0/frameLen*frame.^2));

        % High pass pre-emphasis filter
        for k=2:length(frame)
            frame(k) = frame(k) - coeff * frame(k-1);
        end

        % Apply window function to frame
        frame = frame.*triang(frameLen); 

        % Compute FFT of the frame
        FFT = fft(frame,frameLen);

        % Take log of non redundant mel scaled frequencies   
        feat = log10(mels*abs(FFT(1:halfFFT)));

        % Find peaks in spectrum 
        feat = max(feat(:),1e-22);

        % Perform DCT
        c = dct(feat);

        % Replace first coefficient
        c(1) = energy;

        % Retain desired number of coefficients
        coeffs = c(1:numCoeff); 

        % Save current MFCC's in output matrix
        mfccMatrix(i, :) =  coeffs;
    end
end