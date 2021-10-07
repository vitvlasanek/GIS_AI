function F = GA_fitnes( parametry)
%FITNES Summary of this function goes here
%   Detailed explanation goes here
    
    P=parametry(1);
    I=parametry(2);
    D=parametry(3);
    
    soustava=1;
        
    [x,y]=GA_reg_fce(P,I,D,soustava);
    info=stepinfo(y,x,1);
    ustaleni=info.SettlingTime;
    prekmit_prc=info.Overshoot;
    podkmit_prc=info.Undershoot;
    
    prekmit_max=info.Peak;
    
    %minimum=info.SettlingMin;
    minimum=min(y);
   prekmit_prc=max(podkmit_prc,prekmit_prc);%vybiram to vetsi

       
   if isnan(ustaleni)
       ustaleni=10000;
   end
   
   F=ustaleni+prekmit_prc;
   %F=ustaleni;
   %F=podkmit_max;
        
end

