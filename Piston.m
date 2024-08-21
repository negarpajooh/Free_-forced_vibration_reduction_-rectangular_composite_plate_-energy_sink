function dp=Piston(params,cij,dcdt)
format long
%%
syms x y
ro_inf=params.ro_inf;
U_inf=params.U_inf;
M_inf=params.M_inf;
Phi=phi(params);  % phi
dwdx=cij.*diff(Phi,x);
dwdt=dcdt.*Phi;
%% zita
num_zita=ro_inf*U_inf*U_inf;
den_zita=sqrt(M_inf*M_inf-1);
zita=num_zita/den_zita;
%% mu
num_mu=ro_inf*U_inf*(M_inf*M_inf-2);
den_mu=(M_inf*M_inf-1)^(1.5);
mu=num_mu/den_mu;
%% aerodynamic force
dp=-zita.*dwdx-mu.*dwdt;
dp=sum(dp);
dp=vpa(dp);
end