% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 12: Implement a function [x] = sinewave(t) which produces a
% sine wave of 1001 samples with spacing of dt = 1 ms.
%
% This is the same requirement as Task # 4, so it reuses sinewave.m
% (see Task04_sinewave.m -> rename to sinewave.m).
% Make sure sinewave.m is in the same folder before running this script.

t = 0:0.001:1;   % 1001 samples, spacing = 1 ms
x = sinewave(t);
