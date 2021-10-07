clear


GS1=tf([6],[48,44,12,1]);

GS2=tf([2],[32,16,2,1]);

subplot(2,1,1)
step(GS1)
title ('Prechodovka S1')


subplot(2,1,2)
step(GS2)
title ('Prechodovka S2') 