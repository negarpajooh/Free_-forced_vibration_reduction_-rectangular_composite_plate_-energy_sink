function Omega_cdot=Cdot_coef(ctt)
format long
syms dcdt1 dcdt2 dcdt3 dcdt4
dcdtV=[dcdt1 dcdt2 dcdt3 dcdt4];
nctt=size(ctt,1);
for i=1:nctt
for j=1:nctt
Omega_cdot(i,j)=diff(ctt(i),dcdtV(j));
end
end
Omega_cdot=double(Omega_cdot);
end
