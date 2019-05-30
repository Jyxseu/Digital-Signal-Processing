clc;clear;
N=40;
Hk=[zeros(1,3),0.5,ones(1,5),0.5,0,0.5,ones(1,5),0.5,zeros(1,4),-0.5,-ones(1,5),-0.5,0,-0.5,-ones(1,5),-0.5,zeros(1,3)];
%Hk=[zeros(1,4),0.5,ones(1,3),0.5,0,0,0,0.5,ones(1,3),0.5,zeros(1,6),-0.5,-ones(1,3),-0.5,0,0,0,-0.5,-ones(1,3),-0.5,zeros(1,4)];
k=0:N-1;
hn=real(ifft(Hk.*exp(-1i*pi*(N-1)*k/N)));
[H,w]=freqz(hn,1);

subplot(2,1,1);
plot(w/pi,20*log10(abs(H)));
axis([0,1,-80,10]);
grid on;
xlabel('Normalized frequency/\pi');
ylabel('Amplitude value/dB');
title('Frequency sampling method');

subplot(2,1,2);
plot(w/pi,angle(H));
% axis([0,1,-60,10]);
grid on;
xlabel('Normalized frequency/\pi');
ylabel('Phase/ \circ');
