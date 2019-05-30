%fc=200Hz;delta=1dB;fr=300KHz;At=25dB;T=1ms;
%分别用脉冲响应不变法和双线性变化法设计butter
clear;clc;
fc=200;fr=300;
delta=1;At=25;
fs=1000;
%脉冲响应不变法
wc=2*pi*fc;wr=2*pi*fr;
[N1, wn1]=buttord(wc,wr,delta,At,'s');
[B1, A1]=butter(N1,wn1,'s');
[num1, den1]=impinvar(B1,A1,fs);
[h1,w1]=freqz(num1,den1);
f1=w1/pi*500;
plot(f1,20*log10(abs(h1)));
hold on;
%双线性法
wc2=2*fs*tan(2*pi*fc/(2*fs));
wr2=2*fs*tan(2*pi*fr/(2*fs));
[N2, wn2]=buttord(wc2,wr2,delta,At,'s');
[B2,A2]=butter(N2,wn2,'s');
[num2,den2]=bilinear(B2,A2,fs);
[h2,w2]=freqz(num2,den2);
f2=w2/pi*500;
plot(f2,20*log10(abs(h2)),'--');
axis([0,500,-100,0]);
grid;
xlabel('频率/Hz');
ylabel('幅度/dB');
legend('脉冲响应不变法','双线性变换法');