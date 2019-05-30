clear;clc;
f=0.1;
for n=0:15
x1(n+1)=sin(2*pi*f*n);
end
F=fft(x1);
n1=0:15;
subplot(2,1,1);
stem(n1,abs(F));grid on;ylabel('幅度');xlabel('n');
title('16点DFT')
for n=0:19
x2(n+1)=sin(2*pi*f*n);
end
F2=fft(x2);
n2=0:19;
subplot(2,1,2);
stem(n2,abs(F2));grid on;ylabel('幅度');xlabel('n');
title('20点DFT')
