clc;clear;
wa=0.3;wb=0.5;
wc=[wa wb];
%N=15
N1=15;
W1=fir1(N1-1,wc,'bandpass',hanning(N1));
[h1,w1]=freqz(W1,1);
%N=45
N2=45;
W2=fir1(N2-1,wc,'bandpass',hanning(N2));
[h2,w2]=freqz(W2,1);

figure(1)
subplot(2,1,1);
plot(w1/pi,20*log(abs(h1)));hold on;
plot(0.333,-3,'rs',0.465,-3,'rs',0.566,-20,'rs',0.234,-20,'rs');
text(0.333,-3,['P(',num2str(0.333),',',num2str(-3),')'],'color','k');
text(0.465,-3,['P(',num2str(0.465),',',num2str(-3),')'],'color','k');
text(0.234,-20,['P(',num2str(0.234),',',num2str(-20),')'],'color','k');
text(0.566,-20,['P(',num2str(0.566),',',num2str(-20),')'],'color','k');
xlabel('Normalized frequency/\pi');ylabel('Amplitude value/dB');
title('N=15 Amplitude');grid on;
subplot(2,1,2);
plot(w1/pi,angle(h1));axis([0,1,-pi,pi]);
xlabel('Normalized frequency/\pi');ylabel('Phase/ \circ');
title('N=15 Phase');grid on;

figure(2)
subplot(2,1,1);
plot(w2/pi,20*log(abs(h2)));hold on;
plot(0.336,-3,'rs',0.463,-3,'rs',0.288,-20,'rs',0.511,-20,'rs');
text(0.336,-3,['P(',num2str(0.336),',',num2str(-3),')'],'color','k');
text(0.463,-3,['P(',num2str(0.463),',',num2str(-3),')'],'color','k');
text(0.288,-20,['P(',num2str(0.288),',',num2str(-20),')'],'color','k');
text(0.511,-20,['P(',num2str(0.511),',',num2str(-20),')'],'color','k');
xlabel('Normalized frequency/\pi');ylabel('Amplitude value/dB');
title('N=45 Amplitude');grid on;
subplot(2,1,2);
plot(w2/pi,angle(h2));axis([0,1,-pi,pi]);
xlabel('Normalized frequency/\pi');ylabel('Phase/ \circ');
title('N=45 Phase');grid on;

figure(3)
plot(w1/pi,20*log(abs(h1)),w2/pi,20*log(abs(h2)));
legend('N=15','N=45');grid on;
xlabel('Normalized frequency/\pi');ylabel('Amplitude value/dB');
title('Amplitude comparison');

figure(4)
plot(w1/pi,angle(h1),w2/pi,angle(h2));
legend('N=15','N=45');grid on;axis([0,1,-pi,pi]);
xlabel('Normalized frequency/\pi');ylabel('Phase/ \circ');
title('Phase comparison');
