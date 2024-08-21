function epsilun=stress(Qar,KcurvePhi,params)
nlayer=params.nlayer;

for k=1:nlayer
    stress.sigma(k)=Qbar*KcurvePhi;
    
end

end