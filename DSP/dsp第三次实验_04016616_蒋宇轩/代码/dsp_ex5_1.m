clc;clear;
N=45;
W1=rectwin(N);%矩形窗
W2=hamming(N);%汉明窗
W3=blackman(N);%布莱克窗
[h1,w1]=freqz(W1);
[h2,w2]=freqz(W2);
[h3,w3]=freqz(W3);
figure(1)
stem(W1);hold on;
stem(W2);hold on;
stem(W3);grid on;
legend('Rectwin','hamming','blackman');
title('Comparison of Three Window Functions');
xlabel('n');ylabel('w(n)');
figure(2);
plot(w1/pi,20*log(abs(h1)/abs(h1(1))),w2/pi,20*log(abs(h2)/abs(h2(1))),w3/pi,20*log(abs(h3)/abs(h3(1))));
legend('Rectwin','hamming','blackman');grid on;
title('Normalized Amplitude Values of Three Windows');xlabel('Normalized frequency/\pi');ylabel('Normalized Amplitude value/dB');