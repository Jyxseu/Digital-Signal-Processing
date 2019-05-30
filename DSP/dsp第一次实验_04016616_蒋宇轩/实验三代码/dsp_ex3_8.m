%dsp_ex3_8
xa=Gaussian(8,2);
xb=Sine(0.1,0.0625);
k=length(xa);
Xa=fft(xa,2*k);
Xb=fft(xb,2*k);
rma=real(ifft(conj(Xa).*Xa));
rma=[rma(k+2:2*k) rma(1:k)];
rmb=real(ifft(conj(Xb).*Xb));
rmb=[rmb(k+2:2*k) rmb(1:k)];
m=(-k+1):(k-1);
subplot(2,1,1);stem(m,rma);title('xa的自相关函数');xlabel('m');ylabel('幅度');grid;
subplot(2,1,2);stem(m,rmb);title('xb的自相关函数');xlabel('m');ylabel('幅度');grid;