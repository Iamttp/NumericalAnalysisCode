% 程序1.2 不动点迭代 
% 调用示例：g = @(x) (1+2.*x^3)/(1+3.*x^2)
%           xc = fpi(g,0.5,10)
%           结果：xc =  0.68233
function xc=fpi(g, x0, k)
x(1) = x0;
for i=1:k
    x(i+1) = g(x(i))
end
xc = x(k+1)
