clc;clear;
wa=0.3;wb=0.5;
wc=[wa wb];
%hanning
%N=15
N1=15;
W1=fir1(N1-1,wc,'bandpass',hanning(N1));
[h1,w1]=freqz(W1,1);
%N=45
N2=45;
W2=fir1(N2-1,wc,'bandpass',hanning(N2));
[h2,w2]=freqz(W2,1);

%rectwin
%N=15
N1=15;
W3=fir1(N1-1,wc,'bandpass',boxcar(N1));
[h3,w3]=freqz(W3,1);
%N=45
N2=45;
W4=fir1(N2-1,wc,'bandpass',boxcar(N2));
[h4,w4]=freqz(W4,1);

%blackman
%N=15
N1=15;
W5=fir1(N1-1,wc,'bandpass',blackman(N1));
[h5,w5]=freqz(W5,1);
%N=45
N2=45;
W6=fir1(N2-1,wc,'bandpass',blackman(N2));
[h6,w6]=freqz(W6,1);

%Amplitude comparison N=15
figure(1)
plot(w1/pi,20*log(abs(h1)),w3/pi,20*log(abs(h3)),w5/pi,20*log(abs(h5)));
legend('hanning','rextwin','blackman');grid on;
xlabel('Normalized frequency/\pi');ylabel('Amplitude value/dB');
title('Amplitude comparison N=15');

%Amplitude comparison N=45
figure(2)
plot(w2/pi,20*log(abs(h2)),w4/pi,20*log(abs(h4)),w6/pi,20*log(abs(h6)));
legend('hanning','rextwin','blackman');grid on;
xlabel('Normalized frequency/\pi');ylabel('Amplitude value/dB');
title('Amplitude comparison N=45');

%Phase comparison N=15
figure(3)
plot(w1/pi,angle(h1),w3/pi,angle(h3),w5/pi,angle(h5));
legend('hanning','rextwin','blackman');grid on;axis([0,1,-pi,pi]);
xlabel('Normalized frequency/\pi');ylabel('Phase/ \circ');
title('Phase comparison N=15');

%Phase comparison N=45
figure(4)
plot(w2/pi,angle(h2),w4/pi,angle(h4),w6/pi,angle(h6));
legend('hanning','rextwin','blackman');grid on;axis([0,1,-pi,pi]);
xlabel('Normalized frequency/\pi');ylabel('Phase/ \circ');
title('Phase comparison N=45');
