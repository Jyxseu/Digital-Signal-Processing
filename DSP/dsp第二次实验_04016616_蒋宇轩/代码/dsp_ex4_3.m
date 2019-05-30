%Ë«ÏßĞÔ±ä»»·¨
clear;clc;
fc=1200;fr=2000;
delta=0.5;At=40;
fs=8000;
wc=2*fs*tan(2*pi*fc/(2*fs));
wr=2*fs*tan(2*pi*fr/(2*fs));
%butter
[N1, wn1]=buttord(wc,wr,delta,At,'s');
[B1,A1]=butter(N1,wn1,'s');
[num1,den1]=bilinear(B1,A1,fs);
[h1,w1]=freqz(num1,den1);
f1=w1/pi*4000;
plot(f1,20*log10(abs(h1)));
hold on;
%cheb
[N2,wn2]=cheb1ord(wc,wr,delta,At,'s');
[B2,A2]=cheby1(N2,delta,wn2,'s');
[num2,den2]=bilinear(B2,A2,fs);
[h2,w2]=freqz(num2,den2);
f2=w2/pi*4000;
plot(f2,20*log10(abs(h2)),'--');
hold on;
%ellip
[N3, wn3]=ellipord(wc,wr,delta,At,'s');
[B3 ,A3]=ellip(N3,delta,At,wn3,'s');
[num3 ,den3]=bilinear(B3,A3,8000);
[h3 ,w3]=freqz(num3,den3);
f3=w3/pi*4000;
plot(f3,20*log10(abs(h3)),'-.');

axis([0,4000,-100,0]);
grid on;
xlabel('ÆµÂÊ/Hz');
ylabel('·ù¶È/dB');
legend('°ÍÌØÎÖË¹ÂË²¨Æ÷','ÇĞ±ÈÑ©·òÂË²¨Æ÷','ÍÖÔ²ÂË²¨Æ÷');