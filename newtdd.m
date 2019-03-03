% 程序3.1 牛顿差商插值方法
% 输出嵌套形式的插值多项式的系数c

% x0 = [0 2 3]
% y0 = [1 2 4]
% c = newtdd(x0,y0,3);
% x = 0:0.01:4
% y = nest(2,c,x,x0)
% plot(x0,y0,'o',x,y)

function c=newtdd(x,y,n)
for j=1:n
    v(j,1) = y(j);
end
for i=2:n
    for j=1:n+1-i
        v(j,i)=(v(j+1,i-1)-v(j,i-1))/(x(j+i-1)-x(j));
    end
end
for i=1:n
    c(i) = v(1,i);
end

