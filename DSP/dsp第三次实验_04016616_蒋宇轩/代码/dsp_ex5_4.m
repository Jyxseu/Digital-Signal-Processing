clc;clear;
N=40;
wc=[0.2,0.4,0.6,0.8];

figure(1)
beta=4;
W1=fir1(N-1,wc,'bandpass',kaiser(N,beta));
[h1,w1]=freqz(W1,1);
subplot(3,2,1);
plot(w1/pi,20*log10(abs(h1)));
xlabel('Normalized frequency/\pi');ylabel('Amplitude value/dB');
grid on;
title('\beta=4 Amplitude');
subplot(3,2,2);
plot(w1/pi,angle(h1));
xlabel('Normalized frequency/\pi');ylabel('Phase');
grid on;
title('\beta=4 Phase');

beta=6;
W2=fir1(N-1,wc,'bandpass',kaiser(N,beta));
[h2,w2]=freqz(W2,1);
subplot(3,2,3);
plot(w2/pi,20*log10(abs(h2)));
xlabel('Normalized frequency/\pi');ylabel('Amplitude value/dB');
grid on;
title('\beta=6 Amplitude');
subplot(3,2,4);
plot(w2/pi,angle(h2));
xlabel('Normalized frequency/\pi');ylabel('Phase');
grid on;
title('\beta=6 Phase');

beta=10;
W3=fir1(N-1,wc,'bandpass',kaiser(N,beta));
[h3,w3]=freqz(W3,1);
subplot(3,2,5);
plot(w3/pi,20*log10(abs(h3)));
xlabel('Normalized frequency/\pi');ylabel('Amplitude value/dB');
grid;
title('\beta=10 Amplitude');
subplot(3,2,6);
plot(w3/pi,angle(h3));
xlabel('Normalized frequency/\pi');ylabel('Phase');
grid;
title('\beta=10 Phase');

figure(2)
plot(w1/pi,20*log10(abs(h1)),w2/pi,20*log10(abs(h2)),w3/pi,20*log10(abs(h3)));
legend('\beta =4','\beta =6','\beta =10');grid on;
xlabel('Normalized frequency/\pi');ylabel('Amplitude value/dB');
title('Amplitude comparison ');

figure(3)
plot(w1/pi,angle(h1),w2/pi,angle(h2),w3/pi,angle(h3));
legend('\beta =4','\beta =6','\beta =10');grid on;axis([0,1,-pi,pi]);
xlabel('Normalized frequency/\pi');ylabel('Phase/ \circ');
title('Phase comparison ');