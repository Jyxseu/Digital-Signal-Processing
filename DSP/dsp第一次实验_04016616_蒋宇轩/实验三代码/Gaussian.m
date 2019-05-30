function xa = Gaussian( p,q )
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
for i=0:15
    xa(i+1)=exp(-(i-p)*(i-p)/q);
end

end

