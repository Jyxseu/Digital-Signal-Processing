function xa = Gaussian( p,q )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
for i=0:15
    xa(i+1)=exp(-(i-p)*(i-p)/q);
end

end

