%deklarace pole (-1) o délce vzorku len
len = 1000;
result = zeros(1,len) - 1;
nacitani = waitbar(0,"0%", 'Name', 'Prosím čekejte, vyhodnocuji třídy poruch');
for i = 1:len
    waitbar(i/n,nacitani,string((i/n)*100) + "%");
    s = sprintf('%03d',i);
    img = imread('./DATA_FOTO/ucitel/zaznam_c'+ string(s) +'.png');
    %result(i) = trainedNetwork_1.classify(img);
    result(i) = classify(trainedNetwork_1,img);
end
hold on;
plot(1:len, result-1,':r.','MarkerSize',15);
xlabel('Dny')   
title('Vyhodnocené třídy')
ylabel('Třída')
yticks([-1 0 1 2 3])
xlim([1 len])
ytickangle(90)
grid on;
