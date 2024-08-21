function Layers=Q_Bar(params)
format long
nlayer=params.nlayer;
Q=Qmatrix(params);
T=zeros(3);
nlayer=params.nlayer;
Teta=params.teta;
%%
for i=1:nlayer
teta=Teta(i);
teta=(pi*teta)/180;
T(1,1)=cos(teta)*cos(teta);
T(1,2)=sin(teta)*sin(teta);
T(1,3)=-2*sin(teta)*cos(teta);
T(2,1)=T(1,2);
T(2,2)=T(1,1);
T(2,3)=-T(1,3);
T(3,1)=-0.5*T(1,3);
T(3,2)=0.5*T(1,3);
T(3,3)=T(1,1)-T(1,2);
Layers(i).T=T;
end
%%
for i=1:nlayer
Layers(i).Qbar=(inv(Layers(i).T))*Q*((inv(Layers(i).T))');
end
end