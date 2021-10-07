clear all

fce = @fitnes_sim;
numberOfVariables = 3;

T=100;
%opts = gaoptimset('Generations',50,'PlotFcn',{@gaplotbestf,@gaplotstopping},'Display','iter');

opts = gaoptimset('Generations',40,'Display','iter');

limitD=[0 0 0 ];
%limitU=[1 1 10];
limitU=[999 999 999];
[x,Fval,exitFlag,Output] = ga(fce,numberOfVariables,[],[],[],[],limitD,limitU,[],opts);

fprintf('The number of generations was : %d\n', Output.generations);
fprintf('The number of function evaluations was : %d\n', Output.funccount);
fprintf('The best function value found was : %g\n', Fval);
fprintf('vysledek P: %g I: %g D: %g  \n', x(1),x(2),x(3));
[X,Y]=reg_fce_sim(x(1),x(2),x(3),T);
figure(2)
plot(X,Y);
grid on
limity_txt=sprintf('%.1f,%.1f,%.1f*%.1f,%.1f,%.1f',limitD(1),limitD(2),limitD(3),limitU(1),limitU(2),limitU(3));
 

legenda=sprintf('P:%.3f I:%.3f D:%.3fF%.3f::%s', x(1),x(2),x(3),Fval,limity_txt);
legend(legenda,'Location','southeast')

%  soubor=sprintf('E:/GOOGLE_DRIVE_VUT/grafy/%.3f_SIM_GA_graf',Fval);
%  soubor = strrep(soubor, '.', '_');
%  print(soubor,'-dpng')
% 
%   
%  soubor_ulozit = fopen('E:/GOOGLE_DRIVE_VUT/grafy/parametry_SIM_GA.txt','a');
 
%  limity_txt=sprintf('%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t',limitD(1),limitD(2),limitD(3),limitU(1),limitU(2),limitU(3));
%  fprintf(soubor_ulozit,'%.3f\t%.3f\t%.3f\t%.3f\t %s',Fval,x(1),x(2),x(3),limity_txt) ;
%  fprintf(soubor_ulozit,'\n');
%  fprintf('\n%.3f\t%.3f\t%.3f\t%.3f\t %s',Fval,x(1),x(2),x(3),limity_txt) ;
%  
%  fclose('all');
 stepinfo(Y,X)
 
 %dobry je ukaz_sim(1,0.13,5.81,30) ustaleni cca 10s prek 9,6
 

