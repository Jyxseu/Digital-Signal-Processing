%dsp_ex3_2
n=0:15;
k=0:15;
xb1=Sine(0.1,0.0625);
xb2=Sine(0.1,0.4375);
xb3=Sine(0.1,0.5625);
Xb1=fft(xb1,16);
Xb2=fft(xb2,16);
Xb3=fft(xb3,16);
% figure
% subplot(3,2,1);stem(n,xb1);title('a=0.1,f=0.0625ʱ����');xlabel('n');ylabel('����');grid;
% subplot(3,2,2);stem(k,abs(Xb1));title('a=0.1,f=0.0625��Ƶ����');xlabel('k');ylabel('����');grid;
% subplot(3,2,3);stem(n,xb2);title('a=0.1,f=0.4375ʱ����');xlabel('n');ylabel('����');grid;
% subplot(3,2,4);stem(k,abs(Xb2));title('a=0.1,f=0.4375��Ƶ����');xlabel('k');ylabel('����');grid;
% subplot(3,2,5);stem(n,xb3);title('a=0.1,f=0.5625ʱ����');xlabel('n');ylabel('����');grid;
% subplot(3,2,6);stem(k,abs(Xb3));title('a=0.1,f=0.5625��Ƶ����');xlabel('k');ylabel('����');grid;
figure(1)
subplot(1,2,1);stem(n,xb1);title('a=0.1,f=0.0625ʱ����');xlabel('n');ylabel('����');grid;
subplot(1,2,2);stem(k,abs(Xb1));title('a=0.1,f=0.0625��Ƶ����');xlabel('k');ylabel('����');grid;
figure(2)
subplot(1,2,1);stem(n,xb2);title('a=0.1,f=0.4375ʱ����');xlabel('n');ylabel('����');grid;
subplot(1,2,2);stem(k,abs(Xb2));title('a=0.1,f=0.4375��Ƶ����');xlabel('k');ylabel('����');grid;
figure(3)
subplot(1,2,1);stem(n,xb3);title('a=0.1,f=0.5625ʱ����');xlabel('n');ylabel('����');grid;
subplot(1,2,2);stem(k,abs(Xb3));title('a=0.1,f=0.5625��Ƶ����');xlabel('k');ylabel('����');grid;
