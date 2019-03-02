% Stewart平台运动学

% 参数意义：
% p1\p2\p3为臂长
% v\L1\L2\L3定义三角形的形状(等腰直角）
% x1/x2/y2定义支杆位置

% 使用方法：
% theta = -pi:0.05:pi;
% fx = f(theta);
% plot(theta,fx)
% grid on

% 结果：
% 解为pi/4和-pi/4

function out=f(theta)

L1 = 2;
L2 = L3 = 2.^(1/2);
v = pi/2;
p1 = p2 = p3 = 5.^(1/2);

% syms x1 x2 y2
x1 = 4;
x2 = 0;
y2 = 4;

A2 = L3.*cos(theta) - x1;
B2 = L3.*sin(theta);
A3 = L2.*cos(theta+v) - x2;
B3 = L2.*sin(theta+v) - y2;


N1 = B3.*(p2.^2-p1.^2-A2.^2-B2.^2)-B2.*(p3.^2-p1.^2-A3.^2-B3.^2);
N2 = (-1).*A3.*(p2.^2-p1.^2-A2.^2-B2.^2)+A2.*(p3.^2-p1.^2-A3.^2-B3.^2);
D = 2.*(A2.*B3-B2.*A3);

out = N1.^2+N2.^2-p1.^2*D.^2;

%%%%%%%%%%%%%%%%%%%%%%
hold off
% fig = 0;
for i=1:length(out)
    if abs(out(i)) - 1 < 0
        % fig += 1;
        % subplot(1,2,fig)
        figure(1)
        plot([0 x1 x2],[0 0 y2],'bo'); hold on
        now_theta = theta(i);
        now_x = N1(i)/D(i);
        now_y = N2(i)/D(i);
        
        now_x2 = now_x+L2.*cos(now_theta);
        now_y2 = now_y+L2.*sin(now_theta);
        
        now_x3 = now_x+L3.*cos(now_theta+v);
        now_y3 = now_y+L3.*sin(now_theta+v);
        
        % disp(now_x);
        % disp(now_y);
        % disp(now_x2);
        % disp(now_y2);
        % disp(now_x3);
        % disp(now_y3);
        
        plot([now_x now_x2 now_x3 now_x],[now_y now_y2 now_y3 now_y],'r'); hold on
        
        plot([0 now_x],[0 now_y]); hold on
        plot([x1 now_x2],[0 now_y2]); hold on
        plot([x2 now_x3],[y2 now_y3]); 

        box off
    end
end
%%%%%%%%%%%%%%%%%%%%%%
