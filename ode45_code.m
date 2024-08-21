clear
clc;
close all
global k m c gen1 gen2
%%
gen1=1;
gen2=0;
m=1;c=0.01;k=5;%F=100;
tspan=0:1000;
% F=@(t).1;
y0=[0,0];
[tt,y]=ode45('MassSpring',tspan,y0);
plot(tt,y(:,1))

xlabel('time - sec')
ylabel('disp - m')
grid minor