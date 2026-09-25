% Task 2: Display specific audio information
[file, f] = audioread('audio_122(3).wav');
info = audioinfo('audio_122(3).wav');

% Outputting variables to match the exact command window format
sample_points = size(file, 1)
sampling_rate = f
bit_resolution = info.BitsPerSample
duration = info.Duration