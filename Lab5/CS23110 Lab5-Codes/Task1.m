% Task 1: Reverse the audio array
[file, f] = audioread('audio_122(3).wav');

% Reverse the array in the time axis
file_rev = file(end:-1:1);

% Play the reversed audio
sound(file_rev, f);