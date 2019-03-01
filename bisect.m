% 程序1.1 二分法 
% 调用示例：
%   f = @(x) x^3+x-1
%   xc = bisect(f,0,1,0.00005)
%   最终结果：xc =  0.68234
function xc=bisect(f,a,b,tol)
fa = f(a);
fb = f(b);
while (b-a)/2>tol
    c = (b+a)/2
    fc = f(c)
    if fc == 0
        break
    end

    if sign(fc)*sign(fa)<0
        b = c;fb = fc;
    else
        a = c;fa = fc;
    end
end
xc = (a+b)/2

