function x=FourLink(u)
% u(1)=alpha2
% u(2)=omega2
% u(3)=omega3
% u(4)=omega4
% u(5)=theta2
% u(6)=theta3
% u(7)=theta4

% 定义几何尺寸
r1=12.0;
r2=4.0;
r3=10.0;
r4=7.0;

a=[-r3*sin(u(6)) r4*sin(u(7)); r3*cos(u(6)) -r4*cos(u(7))];
b=[r2*u(1)*sin(u(5))+r2*u(2)^2*cos(u(5))+r3*u(3)^2*cos(u(6))-r4*u(4)^2*cos(u(7)); 
   -r2*u(1)*cos(u(5))+r2*u(2)^2*sin(u(5))+r3*u(3)^2*sin(u(6))-r4*u(4)^2*sin(u(7))];
x=inv(a)*b;