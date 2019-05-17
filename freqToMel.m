% Function to map frequencies to the mel scale
function melBank = freqToMel(numMel, N, fs)
% Arguments:
% numMel: number of frequencies in the mel bank
% N: number of FFT points in the spectrum to be converted
% fs: sample rate of signal to be converted

    % Number of bins in the spectrogram
    NSpec = floor(N / 2 + 1);
    
    % Allocate space for mel matrix
    melBank = zeros(numMel, NSpec);
    
    % Maximum frequency representable by sample rate
    fMax = fs/2;
     
    % Loop over each mel frequency 
    for i = 0:numMel
        % Each frequency corresponds to a row in the mel matrix
        row = zeros(1, NSpec);
        
        % Find the fractional bin index "k" of the frequency
        k = 2595*log(1 + i/700);
            
        % Add this frequency mapping to the current row of the matrix
        row = row + k;
        
        % Save mel mapping in current row of the mel matrix
        melBank(i+1, :) = row;
    end
end