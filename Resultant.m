function [N,M,Nsym,Msym]=Resultant(Bcom,Dcom,KcurvePhi_nonZ,params)
format long
syms x y
x0=params.xstar(1);
y0=params.xstar(2);
%%
N1=Bcom*KcurvePhi_nonZ';
M1=Dcom*KcurvePhi_nonZ';
%%
N=subs(N1,{x,y},{x0,y0});
M=subs(M1,{x,y},{x0,y0});
%%
N=double(N);
M=double(M);
Nsym=N1;
Msym=M1;
end