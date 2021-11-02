function [] = nacistSlozky(adress,n,vzorek)
%Funkce na nacteni vsech slozek

T0 = load(adress);
mkdir('./DATA_FOTO/',vzorek)

for i = 1:n
    subplot(1,2,1)
    plot(T0(i,:),'k')
    %plot(rms(transpose(T0(i,:))),'k')
    ylim([-10,10])
    %použití FFT_vibro.m
    subplot(1,2,2)
    [fr,A] = FFT_vibro(T0(i,:));
    plot(fr,A,'k')
    xlim([0,200])
    ylim([0,3])
   
    set(gcf,'Position',[100 100 440 100])
    nazev = sprintf('zaznam_c%03d',i);
    saveas(gcf,fullfile('./DATA_FOTO',vzorek,nazev));
end

end

