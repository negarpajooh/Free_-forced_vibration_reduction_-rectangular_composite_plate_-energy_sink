function [Bcom,Dcom]=BD_composite(Layers,params)
format long
h=params.h;
nlayer=params.nlayer;
dh=h/nlayer;
z1=-0.5*h:dh:0.5*h;
nz=numel(z1);
%%
Bcom=zeros(3);
Dcom=zeros(3);
for k=2:nz
for i=1:3
    for j=1:3
      Bcom(i,j)=Bcom(i,j)+Layers(k-1).Qbar(i,j).*(z1(k)^2-z1(k-1)^2); 
      Dcom(i,j)=Dcom(i,j)+Layers(k-1).Qbar(i,j).*(z1(k)^3-z1(k-1)^3);
    end
    end
end
Bcom=0.5.*Bcom;
Dcom=(1/3).*Dcom;
end