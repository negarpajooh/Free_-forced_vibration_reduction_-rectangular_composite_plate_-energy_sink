function Phi=phi(params)
format long
a=params.a;
b=params.b;
ni=params.ni;
nj=params.nj;
%%
syms x y
for i=1:ni
    for j=1:nj
Phi1(i,j)=sin((i*pi*x)/a)*sin((j*pi*y)/b);
    end
end
Phi=vpa(Phi1);
end