%dsp_ex3_5
xa=Gaussian(8,2);
xb=Sine(0.1,0.0625);
L=max(length(xa),length(xb));
n1=0:30;
n2=0:15;
N=length(xa)+length(xb)-1;
%循环卷积
subplot(1,2,1);
Xa=fft(xa,16);
Xb=fft(xb,16);
Y=Xa.*Xb;
y=ifft(Y);
stem(n2,y);grid;
title('循环卷积，N=16');
xlabel('n');ylabel('幅度');

%求线性卷积
subplot(1,2,2);
y1=conv(xa,xb);
stem(n1,y1);grid;
title('线性卷积');
xlabel('n');ylabel('幅度');