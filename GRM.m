u=rand(3,1)*2-1;
plot3(0,0,0,'.k')
axis vis3d
axis off
% generating a random rotation matrix R
[R,Q]=qr(randn(3));
plot3([0,1],[0,0],[0,0],'r');
text(1,0,0,'x')
plot3([0,0],[0,1],[0,0],'g');
text(0,1,0,'y')
plot3([0,0],[0,0],[0,1],'b');
text(0,0,1,'z')
plot3([0,u(1,:)],[0,u(2,:)],[0,u(3,:)],'--k')
s = num2str(u','%.3f')
text(0,0,0,s)
hold on 
% generating a new rotation matrox v by multiplying R and u 
v = (R*u)
plot3([0,v(1,:)],[0,v(2,:)],[0,v(3,:)],':k')
a = num2str(v','%.3f')
text(0,0,0,a)
hold on 
