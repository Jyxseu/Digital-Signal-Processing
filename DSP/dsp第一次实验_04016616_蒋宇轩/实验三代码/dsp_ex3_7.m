%dsp_ex3_7
xa=Gaussian(8,2);
xb=Sine(0.1,0.0625);
k=length(xa);
%循环相关
Xa1=fft(xa,2*k);
Xb1=fft(xb,2*k);
rma1=real(ifft(conj(Xa1).*Xb1));
rma1=[rma1(k+2:2*k) rma1(1:k)];
rma2=real(ifft(conj(Xb1).*Xa1));
rma2=[rma2(k+2:2*k) rma1(1:k)];
m=(-k+1):(k-1);
subplot(2,2,1);stem(m,rma1);title('xb和xa的线性相关函数');xlabel('m');ylabel('幅度');grid;
subplot(2,2,2);stem(m,rma2);title('xa和xb的线性相关函数');xlabel('m');ylabel('幅度');grid;
%线性相关
n=0:15;
Xa2=fft(xa);
Xb2=fft(xb);
rmb1=real(ifft(conj(Xa2).*Xb2));
rmb2=real(ifft(conj(Xb2).*Xa2));
subplot(2,2,3);stem(n,rmb1);title('xb和xa的循环相关函数');xlabel('m');ylabel('幅度');grid;
subplot(2,2,4);stem(n,rmb2);title('xa和xb的循环相关函数');xlabel('m');ylabel('幅度');grid;