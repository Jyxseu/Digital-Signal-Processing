function xb = Sine(a,f)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
for i=0:15
    xb(i+1)=exp(-a*i).*sin(2*pi*f*i);
end

end

