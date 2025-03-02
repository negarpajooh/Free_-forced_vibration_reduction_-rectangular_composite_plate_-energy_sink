clear;
clc;
close all
format long
global k m c S Sdot siggen stp noise simout...
    stp_time init_value final_value...
    amplitude frequency noise_power sample_time_noise seed...
    s_initial sdot_initial c_2dot  cdot c_ij2 c_ij Phi_i_star...
    N M dispturb Phi
%% cte
params=importdata();
%% phi
Phi=phi(params);
%% Curvature
[Kcurve_nonZ,KcurvePhiStar]=Curvature(Phi,params);
%% Q - Qbar
Layers=Q_Bar(params);
%% B-D composite
[Bcomposite,Dcomposite]=BD_composite(Layers,params);
%% Galerkin
[cij,dcdt]=Galerkin(params);
%% piston theory
dp=Piston(params,cij,dcdt);
%% N
[N,M,Nsym,Msym]=Resultant(Bcomposite,Dcomposite,Kcurve_nonZ,params);
%% c_2dot    
c_2dot=cdisp(params,Nsym,cij,dcdt,dp,Phi);
cdot=Cdot_coef(c_2dot);
c_ij=C_ij2_coef(c_2dot);
dispturb=disturbance_coef(c_2dot);
%% ode45
tspan=[0,1];
y1=[0.005;0;0;0];
y0=zeros(4,1);
y2=[y0;y1];
[t,w]=ode45('FunctionC',tspan,y2);
plot(t,w(:,1))
%% simulink
sim('NES2')





