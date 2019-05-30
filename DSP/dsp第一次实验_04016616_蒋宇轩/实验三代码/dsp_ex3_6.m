%dsp_ex3_6
xc=zeros(1,8);
for i=0:3
    xc(i+1)=i;
end
for i=4:7
    xc(i+1)=8-i;
end
Xc=fft(xc,512);
G=fft(xc,71);
x=zeros(1,512);
xe=randn(size(x));
Xe=fft(xe);
n=0:511;
subplot(2,2,1);plot(n,abs(Xe));title('512点正态分布噪声信号的幅频特性');xlabel('k');ylabel('幅度');grid;
subplot(2,2,2);plot(n,abs(Xc));title('三角波的幅频特性');xlabel('k');ylabel('幅度');grid;
%重叠相加法
xea1=[xe(1:64),zeros(1,7)];
xea2=[xe(65:128),zeros(1,7)];
xea3=[xe(129:192),zeros(1,7)];
xea4=[xe(193:256),zeros(1,7)];
xea5=[xe(257:320),zeros(1,7)];
xea6=[xe(321:384),zeros(1,7)];
xea7=[xe(385:448),zeros(1,7)];
xea8=[xe(449:512),zeros(1,7)];
ya1=ifft(fft(xea1,71).*G);Ya1=[ya1,zeros(1,519-length(ya1))];
ya2=ifft(fft(xea2,71).*G);Ya2=[zeros(1,64),ya2,zeros(1,519-length(ya2)-64)];
ya3=ifft(fft(xea3,71).*G);Ya3=[zeros(1,128),ya3,zeros(1,519-length(ya3)-128)];
ya4=ifft(fft(xea4,71).*G);Ya4=[zeros(1,192),ya4,zeros(1,519-length(ya4)-192)];
ya5=ifft(fft(xea5,71).*G);Ya5=[zeros(1,256),ya5,zeros(1,519-length(ya5)-256)];
ya6=ifft(fft(xea6,71).*G);Ya6=[zeros(1,320),ya6,zeros(1,519-length(ya6)-320)];
ya7=ifft(fft(xea7,71).*G);Ya7=[zeros(1,384),ya7,zeros(1,519-length(ya7)-384)];
ya8=ifft(fft(xea8,71).*G);Ya8=[zeros(1,448),ya8,zeros(1,519-length(ya8)-448)];
ya=Ya1+Ya2+Ya3+Ya4+Ya5+Ya6+Ya7+Ya8;
Xea=fft(ya);
N=length(xc)+length(xe)-1;
n1=0:N-1;
% subplot(2,2,1);plot(n,abs(Xe));title('512点正态分布噪声信号的幅频特性');xlabel('k');ylabel('幅度');grid;
% subplot(2,2,2);plot(n,abs(Xc));title('三角波的幅频特性');xlabel('k');ylabel('幅度');grid;
subplot(2,2,3);plot(n1,abs(Xea));title('噪声信号的幅频特性(重叠相加法)');xlabel('k');ylabel('幅度');grid;

%重叠保留法
xeb1=[zeros(1,7),xe(1:64)];
xeb2=xe(58:128);
xeb3=xe(122:192);
xeb4=xe(186:256);
xeb5=xe(250:320);
xeb6=xe(314:384);
xeb7=xe(378:448);
xeb8=xe(442:512);
yb1=ifft(fft(xeb1,71).*G);Yb1=[yb1(8:71),zeros(1,519-length(yb1)+7)];
yb2=ifft(fft(xeb2,71).*G);Yb2=[zeros(1,64),yb2(8:71),zeros(1,519-length(yb2)-64+7)];
yb3=ifft(fft(xeb3,71).*G);Yb3=[zeros(1,128),yb3(8:71),zeros(1,519-length(yb3)-128+7)];
yb4=ifft(fft(xeb4,71).*G);Yb4=[zeros(1,192),yb4(8:71),zeros(1,519-length(yb4)-192+7)];
yb5=ifft(fft(xeb5,71).*G);Yb5=[zeros(1,256),yb5(8:71),zeros(1,519-length(yb5)-256+7)];
yb6=ifft(fft(xeb6,71).*G);Yb6=[zeros(1,320),yb6(8:71),zeros(1,519-length(yb6)-320+7)];
yb7=ifft(fft(xeb7,71).*G);Yb7=[zeros(1,384),yb7(8:71),zeros(1,519-length(yb7)-384+7)];
yb8=ifft(fft(xeb8,71).*G);Yb8=[zeros(1,448),yb8(8:71),zeros(1,519-length(yb8)-448+7)];
yb=Yb1+Yb2+Yb3+Yb4+Yb5+Yb6+Yb7+Yb8;
Xeb=fft(yb);
N=length(xc)+length(xe)-1;
n1=0:N-1;
% subplot(2,2,1);plot(n,abs(Xe));title('512点正态分布噪声信号的幅频特性');xlabel('k');ylabel('幅度');grid;
% subplot(2,2,2);plot(n,abs(Xc));title('三角波的幅频特性');xlabel('k');ylabel('幅度');grid;
subplot(2,2,4);plot(n1,abs(Xeb));title('噪声信号的幅频特性(重叠保留法)');xlabel('k');ylabel('幅度');grid;
