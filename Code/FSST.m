% Parameters
Fs = 1000;                % Sampling frequency (Hz)
voicesPerOctave = 48;     % Number of voices per octave

% Read the CSV file containing the synthetic PQD data
file_path = 'all_classes.xlsx';  % Replace with your .csv file path
data = readmatrix(file_path);

% Check if the data is loaded correctly
if isempty(data)
    error('Failed to read data from the CSV file.');
end

% Number of disturbance classes
disturbance_classes = size(data, 1);

% Generate the time vector
t = (0:size(data, 2)-1) / Fs;

% Initialize matrix to store preprocessed signals
preprocessed_signals = zeros(size(data));

% Initialize cell arrays to store FSST results
fsstResults = cell(disturbance_classes, 1);
frequencies = cell(disturbance_classes, 1);

% Perform FSST and preprocessing on each signal
for i = 1:disturbance_classes
    signal = data(i, :);
    
    % Preprocess the signal (e.g., detrending)
    preprocessed_signal = detrend(signal);
    
    % Store the preprocessed signal
    preprocessed_signals(i, :) = preprocessed_signal;
    
    % Apply Fourier Synchrosqueezed Transform (FSST)
    try
        [wt, f] = fsst(preprocessed_signal, Fs);
        fsstResults{i} = wt;
        frequencies{i} = f;
    catch ME
        disp(['Error processing disturbance class ' num2str(i) ': ' ME.message]);
        fsstResults{i} = [];
        frequencies{i} = [];
    end
end

% Save the preprocessed signals to a new CSV file
preprocessed_file_path = 'preprocessed_pqd_data.csv';
writematrix(preprocessed_signals, preprocessed_file_path);

% Plot results for one of the disturbance classes (e.g., the 3rd one)
i = 3;  % Change the index to plot different disturbance classes
signal = preprocessed_signals(i, :);
wt = fsstResults{i};
fs = frequencies{i};

if ~isempty(wt)
    figure;
    
    subplot(2, 1, 1);
    plot(t, signal);
    title(['Preprocessed Disturbance Class ' num2str(i)]);
    xlabel('Time (s)');
    ylabel('Amplitude');
    
    subplot(2, 1, 2);
    sfs = abs(wt);
    imagesc(t, fs, sfs);
    axis xy;
    title('Fourier Synchrosqueezed Transform');
    xlabel('Time (s)');
    ylabel('Frequency (Hz)');
    colorbar;
end

% Save the results to a file
save('fsst_results.mat', 'fsstResults', 'frequencies', 't', 'preprocessed_signals');