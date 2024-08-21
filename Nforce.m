function N1=Nforce(params,cij,Qbar,ni,nj)
%%
syms x y
h=params.h;
h=h*h*0.25;
nlayer=params.nlayer;
Phi=phi(params,ni,nj);
%%
wx=cij.*diff(Phi,x);
wxx=diff(wx,x);
Wxx=sum(wxx);
%
wy=cij.*diff(Phi,y);
wyy=diff(wy,y);
Wyy=sum(wyy);
%
wxy=cij.*diff(wx,y);
Wxy=sum(wxy);
W=[Wxx;Wyy;Wxy];
%%
% Qbar=zeros(3);
% for i=1:nlayer
% %% dw
% Qbar(:,3)=2.*(Qbar+Qbar(i).layer(:,3));
% QBar=Qbar;
% QBar=0.25*h*h*QBar;

%%
N1=QBar*W;
Nxx=N1(1);
Nyy=N1(2);
Nxy=N1(3);
N1.Nxx=Nxx;
N1.Nyy=Nyy;
N1.Nxy=Nxy;
end