% 程序0.1 嵌套乘法 
% 使用霍纳方法计算
% 调用示例：
%   nest(4,[-1 5 -3 3 2],1/2)
%   ans =  1.2500


function y=nest(d,c,x,b)

% 参数小于4，b为0
if nargin<4, b=zeros(d,1); end
y = c(d+1);
for i= d:-1:1
    y = y.*(x-b(i))+c(i);
end