function Q=Qmatrix(params)
E1=params.E1;
E2=params.E2;
nu12=params.nu12;
nu21=params.nu21;
G12=params.G12;
%%
Q=zeros(3);
Q(1,1)=E1/(1-nu12*nu21);
Q(1,2)=nu12*Q(1,1);
Q(2,1)=Q(1,2);
Q(2,2)=E2/(1-nu12*nu21);
Q(3,3)=G12;
end