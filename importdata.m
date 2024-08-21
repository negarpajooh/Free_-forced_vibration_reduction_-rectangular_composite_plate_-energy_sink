function params=importdata()
global k m c S Sdot siggen stp noise simout...
    stp_time init_value final_value...
    amplitude frequency noise_power sample_time_noise seed...
    s_initial sdot_initial c_2dot  cdot c_ij2 c_ij Phi_i_star...
    N M
%% cte
a=0.3;b=0.12;h=0.001;
E1=138e9;E2=7.2e9;
nu12=.236;nu21=.0939;
ro0=1580;
G12=5.5e9;
ro_inf=1.288e3;
M_inf=4;
U_inf=300;
k=2e4;m=5e-3;c=100;
I0=h*ro0;
I1=(ro0*h*h*h)/12;
%% variables
ni=4;nj=1;
xstar=a*0.5;
ystar=b*0.5;
nlayer=4;
teta=[0,90,0,90];
%% initial condition
% X=[0;0;0;0];
% Xdot=[0;0;0;0];
%% distubance
% stp=1;
% stp_time=0.01;
% init_value=0;
% final_value=1;
%
% siggen=0;
% amplitude=1;
% frequency=1;
%
% noise=1;
% noise_power=0.1;
% sample_time_noise=0.1;
% seed=23341;
%% params
params.a=a;params.b=b;params.h=h;params.E1=E1;params.E2=E2;
params.nu12=nu12;params.nu21=nu21;params.ro0=ro0;params.G12=G12;
params.ro_inf=ro_inf;params.M_inf=M_inf;params.U_inf=U_inf;
params.k=k;params.m=m;params.c=c;params.teta=teta;params.I0=I0;
params.I1=I1;params.nlayer=nlayer;params.ni=ni;params.nj=nj;
params.xstar(1)=xstar;params.xstar(2)=ystar;
end