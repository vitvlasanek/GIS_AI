
function [X,Y]=reg_fce_sim(P,I,D,T,G,Ts,S)


% reg=pid(P,I,D);
% load('soustavy.mat')
% soustava = tf(K1,S1);
% Gw = feedback(series(reg,soustava),1);
% [Y,X]=step(Gw,T);


krok=Ts;
reg=pid(P,I,D,'Ts',krok);
load('soustavy.mat')

if S==1
soustava = tf(K1,S1);
end

if S==2
soustava = tf(K2,S2);
end


Gw = feedback(series(reg,c2d(soustava,krok)),1);
[Y,X]=step(Gw,T);

