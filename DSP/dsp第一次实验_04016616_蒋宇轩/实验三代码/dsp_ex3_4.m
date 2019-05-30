%dsp_ex3_4
df1=1/16;
df2=1/64;
N1=16;
N2=128;
n1=1:N1;
n2=1:N2;
for i=0:N1-1
    x1(i+1)=sin(2*pi*0.125*i)+cos(2*pi*(0.125+df1)*i);
    x2(i+1)=sin(2*pi*0.125*i)+cos(2*pi*(0.125+df2)*i);
end

for i=0:N2-1
    x3(i+1)=sin(2*pi*0.125*i)+cos(2*pi*(0.125+df1)*i);
    x4(i+1)=sin(2*pi*0.125*i)+cos(2*pi*(0.125+df2)*i);
end

X1=fft(x1,16);
X2=fft(x2,16);
X3=fft(x3,128);
X4=fft(x4,128);

figure(1)
subplot(2,2,1);stem(n1,abs(X1));title('16点信号的幅频特性，频差为1/16');xlabel('n');ylabel('幅度');grid;
subplot(2,2,2);stem(n1,abs(X2));title('16点信号的幅频特性，频差为1/64');xlabel('n');ylabel('幅度');grid;
subplot(2,2,3);stem(n2,abs(X3));title('128点信号的幅频特性，频差为1/16');xlabel('n');ylabel('幅度');grid;
subplot(2,2,4);stem(n2,abs(X4));title('128点信号的幅频特性，频差为1/64');xlabel('n');ylabel('幅度');grid;
