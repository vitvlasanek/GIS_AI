function F = fitnes_sim( parametry)
%FITNES Summary of this function goes here
%   Detailed explanation goes here
    T=120;
    P=parametry(1);
    I=parametry(2);
    D=parametry(3);
    Ts=0.1;
  
    G=15;
    
    
    [x,y]=reg_fce_sim(P,I,D,T,G,Ts);
    info=stepinfo(y,x,1);
    ustaleni=info.SettlingTime;
    prekmit_prc=info.Overshoot;
    podkmit_prc=info.Undershoot;
    
    %minimum=info.SettlingMin;
    minimum=min(y);
   prekmit_prc=max(podkmit_prc,prekmit_prc);%vybiram to vetsi

   minP=0; 
   if minimum <0
       minP=minimum^2*100;
   end
       
   if isnan(ustaleni)
       ustaleni=T*2;
   end
   
   F=ustaleni+prekmit_prc+minP;
        
end

