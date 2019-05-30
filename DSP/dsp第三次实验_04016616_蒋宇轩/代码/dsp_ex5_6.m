clc;clear;
N=40;
M=N-1;
f=[0 0.15 0.2 0.4 0.45 0.55 0.6 0.8 0.85 1];
a=[0 0 1 1 0 0 1 1 0 0];
weight=[2 1 2 1 2];
h=firpm(M,f,a,weight);
[H,w]=freqz(h,1);

subplot(2,1,1);
plot(w/pi,20*log10(abs(H)));
grid on;axis([0,1,-60,10]);
xlabel('Normalized frequency/rad');
ylabel('Amplitude value/dB');
title('Remitz Alternating Algorithms');

subplot(2,1,2);
plot(w/pi,angle(H));
% axis([0,1,-60,10]);
grid on;
xlabel('Normalized frequency/rad');
ylabel('Phase/ rad');