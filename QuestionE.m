function [du]=QuestionE(t,u)
du=zeros(2,1);
Damping=0.05;
wn=9.74;
du(1)=-2*Damping*wn*u(1)-u(2)*(wn^2)+(940/530)*sin(10*pi*t);
du(2)=u(1);
end
