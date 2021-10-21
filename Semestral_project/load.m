%Skript k načítání dat z textových souborů

clear all
clc

data load('./DATA/data.txt');

subplot(1,2,1)
plot(DATA(500,:))
ylim([-10,10])

%použití FFT_vibro.m
subplot(1,2,2)
[FR,A] = FFT_viibro(DATA500,:));
plot(fr,A)
xlim([0,200])
ylim([0,3])


%ukládání dat do grafů.png
% plot(rms(transpose(DATA),'k')
%      
% for i = 1:10
%     nazev = sprintf('zaznam_c%03d',i);
%     set(gcf,'Position',[100 100 440 100])
%     saveas(gcf,nazev);
% end
% 

disp('konec')
