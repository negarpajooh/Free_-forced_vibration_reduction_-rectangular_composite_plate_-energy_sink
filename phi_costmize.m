function Phi=phi_costmize(params,nii,njj)
format long
%%
a=params.a;
b=params.b;
%%
syms x y
for i=1:nii
    for j=1:njj
Phi(i,j)=sin((i*pi*x)/a)*sin((j*pi*y)/b);
    end
end
end