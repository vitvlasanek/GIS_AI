clear all

fce = @GA_fitnes;
numberOfVariables = 3;

soustava=1;
%opts = gaoptimset('Generations',50,'PlotFcn',{@gaplotbestf,@gaplotstopping},'Display','iter');

opts = gaoptimset('Generations',50,'Display','iter');

limitD=[0 0 0 ];
%limitU=[1 1 10];
limitU=[99 99 99];
[x,Fval,exitFlag,Output] = ga(fce,numberOfVariables,[],[],[],[],limitD,limitU,[],opts);

fprintf('The number of generations was : %d\n', Output.generations);
fprintf('The number of function evaluations was : %d\n', Output.funccount);
fprintf('The best function value found was : %g\n', Fval);
fprintf('**********************************************\n');
fprintf('\n  vysledek P: %.3f I: %.3f D: %.3f   \n\n', x(1),x(2),x(3));
fprintf('**********************************************\n');
[X,Y]=GA_reg_fce_vysledek(x(1),x(2),x(3),soustava);
figure(2)
plot(X,Y);
grid on
limity_txt=sprintf('%.1f,%.1f,%.1f*%.1f,%.1f,%.1f',limitD(1),limitD(2),limitD(3),limitU(1),limitU(2),limitU(3));
 

legenda=sprintf('P:%.3f I:%.3f D:%.3fF%.2f::%s', x(1),x(2),x(3),Fval,limity_txt);
legend(legenda,'Location','southeast')
stepinfo(Y,X)
