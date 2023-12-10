% theta3和theta4的初始值
theta3_bar = 20.0*pi/180.0;
theta4_bar = 80.0*pi/180.0;
% 其他参数值
r1=12.0;
r2=4.0;
r3=10.0;
r4=7.0;
theta2=45.0*pi/180.0;
% 迭代求解
for i=1:10000
    J=[-r3*sin(theta3_bar) r4*sin(theta4_bar); r3*cos(theta3_bar) -r4*cos(theta4_bar)];
    [b1,b2]=FourLinkVectorLoop(r1,r2,r3,r4,theta2,theta3_bar,theta4_bar);
    delta_theta=inv(J)*[-b1;-b2];
    theta3_bar=theta3_bar+delta_theta(1);
    theta4_bar=theta4_bar+delta_theta(2);
end
disp(theta3_bar*180.0/pi);
disp(theta4_bar*180.0/pi);