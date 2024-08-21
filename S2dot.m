function s_2dot=S2dot(params,cij,ni,nj,Phi_i_star)
k=params.k;
c=params.c;
m=params.m;
sdot=Sdot(ni,nj);
%%
syms s
f1=cij.*Phi_i_star-s;
f1=f1.^3;
f1=(k/m).*f1;
f1=vpa(f1);
%
f2=cij.*Phi_i_star-sdot;
f2=(c/m).*f2;
f2=vpa(f2);
%
s_2dot=f1+f2;

end