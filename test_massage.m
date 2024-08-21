clear;
clc;
close all
%% alram
%  msg = '';
%  msg = sprintf('Telephone - 09198470686',1,2,3);
%  msgbox(msg,'Hasanlu');
%%
%  msg = '';
%  msg = sprintf('Telephone - 09198470686',1,2,3);
%  msgbox(msg,'Hasanlu');
%%
% f = warndlg('Telephone - 09198470686','Hasanlu');
%%
% x=syms('x')
% y=x*x*x;
% diff(y)
syms t
tspan = [0 5];
y0 = 0;
ydot=2*t;
[t,y] = ode45(@(t,y) ydot, tspan, y0);
plot(t,y)
% hold on
% plot(tspan,ydot)
