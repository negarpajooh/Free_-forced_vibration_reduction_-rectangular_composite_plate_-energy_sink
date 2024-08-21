function [cij,dcdt]=Galerkin(params)
ni=params.ni;
nj=params.nj;
%%
cij= sym('cij', [ni nj]);
dcdt=sym('dcdt', [ni nj]);
end