function xb = Sine(a,f)
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
for i=0:15
    xb(i+1)=exp(-a*i).*sin(2*pi*f*i);
end

end

