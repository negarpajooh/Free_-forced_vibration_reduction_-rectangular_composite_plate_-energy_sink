function x_2dot=cdisp(params,N,cij,dcdt,dp,Phi)
format long
%%
ni=params.ni;
a=params.a;b=params.b;I1=params.I1;I0=params.I0;
h=params.h;
xstar=params.xstar(1);
ystar=params.xstar(2);
k=params.k;
c=params.c;
%%
syms x y
Nx=N(1);
Ny=N(2);
Nxy=N(3);
% Phi=phi(params);
%%
for i=1:ni
f11=a*a*b*b*I0+(i*i*b*b+a*a)*pi*pi*I1;
f1(i)=(4*a*b)/f11;
end
%% dN
dNxdx=diff(Nx,x);
dNxdxx=diff(dNxdx,x);
%
dNydy=diff(Ny,y);
dNydyy=diff(dNydy,y);
%
dNxydx=diff(Nxy,x);
dNxydxy=diff(dNxydx,y);
%% f2
f3=dNxdxx+dNydyy+2*dNxydxy-dp;
f2_phi=f3.*Phi;
f2=int(f2_phi,x,0,a);
f2=int(f2,y,0,b);
%%  (h*h/8).*
f3=f1'.*f2;
%% Xi(x*/a,y*/b)
Phi_i=phi_costmize(params,ni,1);
Phi_i_star1=subs(Phi_i,{x,y},{xstar,ystar});
Phi_i_star=double(Phi_i_star1);
%
Phi_j=phi_costmize(params,1,ni);
Phi_j_star1=subs(Phi_j,{x,y},{xstar,ystar});
Phi_j_star2=double(Phi_j_star1);
Phi_j_star=Phi_j_star2';
%
Xi1=(k.*cij+c.*dcdt).*Phi_j_star.*Phi_i_star;
Xi=sum(Xi1);
%%
x_2dot=f3+Xi;
end