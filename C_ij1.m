function c_ij=C_ij1(ctt)
syms cij1 cij2 cij3 cij4
c1=diff(ctt(1),cij1);
c1=subs(c1,{cij1},{0});
c2=diff(ctt(2),cij2);
c2=subs(c2,{cij2},{0});
c3=diff(ctt(3),cij3);
c3=subs(c3,{cij3},{0});
c4=diff(ctt(4),cij4);
c4=subs(c4,{cij4},{0});
c_ij=[c1,c2,c3,c4];
c_ij=double(c_ij);
end