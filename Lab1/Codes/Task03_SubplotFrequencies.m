% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 3: Generate a script file which produces a sine wave with 2Hz,
% 5Hz, 10Hz and 20Hz frequencies on a single figure using subplot.

t = 0:0.001:1;
freqs = [2 5 10 20];

for i = 1:4
    y = sin(2*pi*freqs(i)*t);
    subplot(2,2,i);
    plot(t, y);
    title([num2str(freqs(i)), ' Hz']);
    xlabel('Time (s)');
    ylabel('Amplitude');
end
