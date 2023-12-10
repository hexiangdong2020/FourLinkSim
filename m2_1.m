r2 = 4.0;
r3 = 10.0;
r4 = 7.0;
theta2 = 45.0 * pi / 180.0;
theta3 = 0.430261050286760;
theta4 = 1.582654309064681;
omega2 = 100.0;

J = [-r3*sin(theta3) r4*sin(theta4); r3*cos(theta3) -r4*cos(theta4)];
b = [omega2*r2*sin(theta2); -omega2*r2*cos(theta2)];
omega34 = inv(J)*b;
disp(omega34);