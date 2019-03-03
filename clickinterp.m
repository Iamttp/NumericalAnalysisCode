% 程序3.2 多项式插值程序
% 鼠标点击图形窗口定位
% ！！！应使用的网上Octave，故未验证

function clickinterp
xl = -3;xr = 3;yb = -3;yt = 3;
plot([xl xr],[0 0],'k',[0 0],[yb yt],'k');grid on;
xlist = [];ylist = [];
k=0;
while(0==0)
    [xnew,ynew] = ginput(1);    %获取鼠标点击
    if length(xnew) < 1
        break
    end
    k = k+1
    xlist(k) = xnew; ylist(k) = ynew;
    c = newtdd(xlist,ylist,k)
    x = xl:.01:xr;
    y = nest(k-1,c,x,xlist)
    plot(xlist,ylist,'o',x,y,[xl xr],[0 0],'k',[0 0],[yb yt],'k')
    axis([xl xr yb yt]);grid on;
end