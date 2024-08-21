function Omega_c=C_ij2_coef(ctt)
format long
syms cij1 cij2 cij3 cij4
cijV=[cij1 cij2 cij3 cij4];
nctt=size(ctt,1);
for i=1:nctt
for j=1:nctt
Omega_c(i,j)=diff(ctt(i),cijV(j));
end
end
Omega_c=double(Omega_c);
end