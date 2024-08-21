function [Kcurve_nonZ,KcurvePhiStar]=Curvature(phi,params)
format long
syms x y
Kx0=diff(phi,x);
Kx2=-diff(Kx0,x);
Kx1=sum(Kx2);
%
Ky0=diff(phi,y);
Ky2=-diff(Ky0,y);
Ky1=sum(Ky2);
%
Kxy0=-2*diff(Kx0,y);
Kxy1=sum(Kxy0);
%%
Kcurve_nonZ=[Kx1,Ky1,Kxy1];
%%
KcurvePhiStar=CurvatureStar(Kcurve_nonZ,params);
%%
end