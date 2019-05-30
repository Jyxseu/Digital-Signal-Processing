%xc
for n=0:3;
xc(n+1)=n;
end
for n=4:7;
xc(n+1)=8-n;
end 
%xd
for n=0:3;
xd(n+1)=4-n;
end
for n=4:7;
xd(n+1)=n-4;
end
n=0:7;
w=0:0.01:2*pi;
Fc=zeros(size(w));
Fd=zeros(size(w));
for k=1:8
    Fc=Fc+xc(k)*exp(-1i.*w.*k);
    Fd=Fd+xd(k)*exp(-1i.*w.*k);
end
subplot(2,2,1);
stem(n,xc);grid on;axis([0,7,0,4]);ylabel('幅度');xlabel('n');
title('xc的时域特性')
subplot(2,2,2);
plot(w,abs(Fc));grid on;axis([0,2*pi,0,20]);ylabel('幅度');xlabel('w');
title('xc的DTFT频域特性')
subplot(2,2,3);
stem(n,xd);grid on;axis([0,7,0,4]);ylabel('幅度');xlabel('n');
title('xd的时域特性')
subplot(2,2,4);
plot(w,abs(Fd));grid on;axis([0,2*pi,0,20]);ylabel('幅度');xlabel('w');
title('xd的DTFT频域特性')
