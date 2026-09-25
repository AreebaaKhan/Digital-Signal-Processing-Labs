clc;
clear;
close all;

% ------------------------------------------------
% TASK 4
% Record at 32 kHz, 8-bit resolution
% ------------------------------------------------

Fs_original = 32000;      % Original sampling frequency
nBits = 8;                % 8-bit resolution
nChannels = 1;            % Mono
duration = 5;             % Recording duration

% Create recorder
recObj = audiorecorder(Fs_original, nBits, nChannels);

disp('Start speaking...');
disp('Say your sentence clearly.');
recordblocking(recObj, duration);
disp('Recording finished.');

% Get recorded audio
x = getaudiodata(recObj);

% Save original recording
audiowrite('task4_original.wav', x, Fs_original);

% Play original
disp('Playing original 32 kHz audio...');
sound(x, Fs_original);
pause(duration + 1);


% ------------------------------------------------
% Sampling rates required by the lab
% ------------------------------------------------

sampleRates = [16000 8000 4000 2000 1000 500 250];

% Number of plots
numRates = length(sampleRates);


% ------------------------------------------------
% Create figure for all waveforms
% ------------------------------------------------

figure;

% Plot original signal
subplot(4,2,1);

t = (0:length(x)-1) / Fs_original;

plot(t, x);

title('Original - 32 kHz');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;


% ------------------------------------------------
% Resample and plot each signal
% ------------------------------------------------

for k = 1:numRates

    newFs = sampleRates(k);

    % Resample
    y = resample(x, newFs, Fs_original);

    % Normalize
    maxValue = max(abs(y));

    if maxValue > 0
        y = y / maxValue;
    end

    % Save audio
    filename = sprintf('audio_%dHz.wav', newFs);

    audiowrite(filename, y, newFs);

    fprintf('\nAudio resampled to %d Hz\n', newFs);
    fprintf('Saved as: %s\n', filename);


    % ------------------------------------------------
    % Plot waveform
    % ------------------------------------------------

    t_new = (0:length(y)-1) / newFs;

    subplot(4,2,k+1);

    plot(t_new, y);

    title(sprintf('%d Hz', newFs));
    xlabel('Time (seconds)');
    ylabel('Amplitude');
    grid on;


    % ------------------------------------------------
    % Play audio only if sample rate is supported
    % ------------------------------------------------

    if newFs >= 1000

        disp('Playing audio...');

        sound(y, newFs);

        playbackTime = length(y) / newFs;

        pause(playbackTime + 1);

    else

        disp('Sample rate too low for sound device.');
        disp('Audio saved but not played.');

    end

end


disp(' ');
disp('Task 4 completed successfully.');