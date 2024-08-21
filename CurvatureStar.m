function KcurvePhiStar=CurvatureStar(KcurvePhi,params)
format long
syms x y
x1=params.xstar(1);
y1=params.xstar(2);
%%
KcurvePhiStar=subs(KcurvePhi,{x,y},{x1,y1});
KcurvePhiStar=double(KcurvePhiStar);
end