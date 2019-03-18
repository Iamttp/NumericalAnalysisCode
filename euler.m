% 程序6.1 求解初值问题的欧拉方法
% 区间inter,初值y0,步数n
% 调用方法：euler([0,1],1,10);


function [t,y] = euler(inter,y0,n)
t(1) = inter(1);  
y(1) = y0;
h = (inter(2)-inter(1))/n;
for i = 1:n
  t(i+1) = t(i) + h;
  y(i+1) = eulerstep(t(i),y(i),h);
end
plot(t,y)

function y = eulerstep(t,y,h)
y = y+h*ydot(t,y);

function z=ydot(t,y)
z = t*y+t^3;