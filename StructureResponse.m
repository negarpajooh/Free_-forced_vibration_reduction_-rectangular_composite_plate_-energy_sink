function wxyt=StructureResponse(cij,Phi,params)
xtar=params.xstar(1);
ystar=params.xstar(2);
syms x y
%%
for i=1:4
    for j=1:size(cij,1)
wxyt1(j,i)=cij(j,i)*Phi(i);
% wxyt2(j,i)=vpa(wxyt1);
    end
end
wxyt=subs(wxyt1,{x,y},{xtar,ystar});
wxyt=double(wxyt);

end