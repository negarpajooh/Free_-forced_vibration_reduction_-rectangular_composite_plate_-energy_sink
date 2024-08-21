function cij=C_ij(ctt)
syms cij1 cij2 cij3 cij4
c1=diff(ctt(1),cij1);
c2=diff(ctt(2),cij2);
c3=diff(ctt(3),cij3);
c4=diff(ctt(4),cij4);
cij=[c1,c2,c3,c4];
end