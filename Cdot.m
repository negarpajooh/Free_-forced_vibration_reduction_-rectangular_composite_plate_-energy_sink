function Omega_cdot=Cdot_coef(ctt)
format long
syms dcdt1 dcdt2 dcdt3 dcdt4
dcdtV=[dcdt1 dcdt2 dcdt3 dcdt4];
for i=1:size(ctt,1)
for j=1:size(ctt,1)
Omega_cdot(i,j)=diff(ctt(i),dcdtV(j));
end
end
Omega_cdot=double(Omega_cdot);
end
