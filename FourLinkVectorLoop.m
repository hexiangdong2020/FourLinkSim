function[f1, f2]=FourLinkVectorLoop(r1, r2, r3, r4, theta2, theta3, theta4)
f1=r2*cos(theta2)+r3*cos(theta3)-r1-r4*cos(theta4);
f2=r2*sin(theta2)+r3*sin(theta3)-r4*sin(theta4);