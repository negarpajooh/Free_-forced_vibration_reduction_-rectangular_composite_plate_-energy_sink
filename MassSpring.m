function Y=MassSpring(t,y)
global k m c gen1 gen2
F1=gen1*sin(t);
F2=gen2*1;
Y(1)=y(2);
Y(2)=-(c/m)*y(2)-(k/m)*y(1)+((F1+F2)./m);
Y=Y';

end