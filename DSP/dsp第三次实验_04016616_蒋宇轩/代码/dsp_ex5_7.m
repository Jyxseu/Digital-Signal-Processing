clc;clear;
f=[500 800];
fs=5000;
a=[0 1];
dev=[0.01 1-10^(-1/20)];
[M,fpts,mag,wt]=remezord(f,a,dev,fs);
h=remez(M,fpts,mag,wt);
% [H,w]=
freqz(h,1);

% subplot(2,1,1);
% plot(w*2500/pi,20*log10(abs(H)));
% grid on;
% xlabel('Normalized frequency/Hz');
% ylabel('Amplitude value/dB');
title('Hp FIR Filter ');
% 
% subplot(2,1,2);
% plot(w*2500/pi,angle(H));
% grid on;
% xlabel('Normalized frequency/Hz');
% ylabel('Phase/rad');