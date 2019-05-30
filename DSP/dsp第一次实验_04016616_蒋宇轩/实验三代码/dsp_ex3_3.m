%dsp_ex3_3
xc1=zeros(1,8);
xd1=zeros(1,8);
xc2=zeros(1,32);
xd2=zeros(1,32);
n1=0:7;
k1=0:7;
n2=0:31;
k2=0:31;
for i=0:3
    xc1(i+1)=i;
    xd1(i+1)=4-i;
    xc2(i+1)=i;
    xd2(i+1)=4-i;
end
for i=4:7
    xc1(i+1)=8-i;
    xd1(i+1)=i-4;
    xc2(i+1)=8-i;
    xd2(i+1)=i-4;
end
Xc1=fft(xc1,8);
Xd1=fft(xd1,8);
Xc2=fft(xc1,32);
Xd2=fft(xd1,32);
figure(1)
subplot(2,2,1);stem(n1,xc1);title('8点衰减正弦序列时域波形');xlabel('n');ylabel('幅度');grid;
subplot(2,2,2);stem(k1,abs(Xc1));title('8点衰减正弦序列幅频特性');xlabel('k');ylabel('幅度');grid;
subplot(2,2,3);stem(n1,xd1);title('8点反三角波序列时域波形');xlabel('n');ylabel('幅度');grid;
subplot(2,2,4);stem(k1,abs(Xd1));title('8点反三角波序列幅频特性');xlabel('k');ylabel('幅度');grid;

figure(2)
subplot(2,2,1);stem(n2,xc2);title('32点衰减正弦序列时域波形');xlabel('n');ylabel('幅度');grid;
subplot(2,2,2);stem(k2,abs(Xc2));title('32点衰减正弦序列幅频特性');xlabel('k');ylabel('幅度');grid;
subplot(2,2,3);stem(n2,xd2);title('32点反三角波序列时域波形');xlabel('n');ylabel('幅度');grid;
subplot(2,2,4);stem(k2,abs(Xd2));title('32点反三角波序列幅频特性');xlabel('k');ylabel('幅度');grid;