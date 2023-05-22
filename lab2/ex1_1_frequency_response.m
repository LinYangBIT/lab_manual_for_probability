clear all;
close all;
clc;

a = [1 -1.1314 0.64];
b = [1];
[h,w] = freqz(b,a,512);
semilogy(w,abs(h))
title('Frequency Response [3120210726]');
xlabel('Normalized Frequency');
ylabel('|H(f)|');