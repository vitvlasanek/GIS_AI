clear

p=1;
i=1;
d=1;

soustava=1;

if soustava==1
    GS=tf([6],[48,44,12,1]);
end
if soustava==2
    GS=tf([2],[32,16,2,1]);
end

subplot(2,1,1)

step(GS)
grid on 

subplot(2,1,2)
[x,y]=GA_reg_fce_vysledek(p,i,d,soustava);

plot(x,y)
title('Regulator + soustava')
grid on
xlabel('cas (s)')
info=stepinfo(y,x,1)


