function disptub=disturbance_coef(c_2dot)
syms dcdt1 dcdt2 dcdt3 dcdt4 cij1 cij2 cij3 cij4
 disptub1=...
subs(c_2dot,{dcdt1,dcdt2,dcdt3,dcdt4,cij1,cij2,cij3,cij4},{0,0,0,0,0,0,0,0});
disptub=double(disptub1);
end