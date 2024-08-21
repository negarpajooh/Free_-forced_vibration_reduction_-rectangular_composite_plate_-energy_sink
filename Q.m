function Qmatrix=Q(params)
E1=params.E1;
E2=params.E2;
nu12=params.nu12;
nu21=params.nu21;
G12=params.G12;
%%
Qmatrix=zeros(3);
Qmatrix(1,1)=E1/(1-nu12*nu21);
Qmatrix(1,2)=nu12*Qmatrix(1,1);
Qmatrix(2,1)=Qmatrix(1,2);
Qmatrix(2,2)=E2/(1-nu12*nu21);
Qmatrix(3,3)=G12;

end