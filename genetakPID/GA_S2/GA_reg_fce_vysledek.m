function [X,Y]=GA_reg_fce_vysledek(P,I,D,S)

if S==1
    GS=tf([6],[48,44,12,1]);
end
if S==2
    GS=tf([2],[32,16,2,1]);
end
    

GR= pid (P,I,D);

Gw=feedback(series(GR,GS),1);
[Y,X]=step(Gw);

