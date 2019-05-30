clear;clc;
fs=30000;
delta=3;At2=5;At1=20;
fa=2000;fb=3000;
f1=1500;f2=6000;
%脉冲响应不变法
w11=2*pi*f1;w21=2*pi*f2;
wa1=2*pi*fa;wb1=2*pi*fb;
[N1, wn1]=buttord([wa1 wb1],[w11 w21],delta,20,'s');
[B1, A1]=butter(N1,wn1,'s');
[num1, den1]=impinvar(B1,A1,fs);
[h1,w1]=freqz(num1,den1);
f=w1/pi*15000;
plot(f,20*log10(abs(h1)));
hold on;

%双线性法
w1=2*fs*tan(2*pi*f1/(2*fs));w2=2*fs*tan(2*pi*f2/(2*fs));
wa=2*fs*tan(2*pi*fa/(2*fs));wb=2*fs*tan(2*pi*fb/(2*fs));
[N2, wn2]=buttord([wa wb],[w1 w2],delta,20,'s');
[B2,A2]=butter(N2,wn2,'s');
[num2,den2]=bilinear(B2,A2,fs);
[h2,w2]=freqz(num2,den2);
f=w2/pi*15000;
plot(f,20*log10(abs(h2)));

axis([0,15000,-100,0]);
grid;
xlabel('频率/Hz');
ylabel('幅度/dB');
legend('脉冲响应不变法','双线性变换法');