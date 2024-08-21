clear;clc;close all
Damping=0.05;
wn=9.75;
omega=10*pi;
k=50000;
m=527.1;
g=9.81;
r=omega/wn;
F=940;
wd=wn.*sqrt(1-Damping.^2);
timespan=(50*2*pi)/omega;
xst=-(m*g)/k;
v0=0;
A=xst;
B=(v0+Damping*wn*xst)/wd;
%%
[t,u]=ode45(@QuestionE,[0 timespan],[v0,xst]);
u=exp(-Damping.*wn.*t).*(A.*cos(wd.*t)+B.*sin(wd.*t));
y=(2*Damping*r)/(1-r^2);
fi=atan(y);
X=((F/k)/(sqrt((1-(r^2))^2+4*(Damping^2)*(r^2))))
u1=X.*cos(omega.*t-fi)+u;
%%
plot(t,u,'r')
hold on
plot(t,u1,'b')
title('Forced Vibration Responce')
xlabel('Time')
ylabel('x(t)')