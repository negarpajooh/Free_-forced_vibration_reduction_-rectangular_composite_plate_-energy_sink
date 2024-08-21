function Fctt=FunctionC(t,ddx)
global c_ij cdot dispturb
dx(1:4,1)=ddx(5:8);
dx(5:8,1)=c_ij*ddx(1:4,1)+cdot*ddx(5:8,1)+dispturb;
Fctt=dx;
end
