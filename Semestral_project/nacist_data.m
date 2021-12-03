nacitani = waitbar(0,"Spouštím načítání dat...", 'Name', 'Prosím čekejte, načítám data');
for i=0:3
    fprintf('\nNačítám vzorovou třídu %d: ', i)
    waitbar(0,nacitani,"Načítám vzorovou třídu " + string(i) + "... (" + string(i+1) + "/5)")
    nacistSlozky('./DATA/Trida' + string(i) +'.txt',6,'vystup' + string(i),nacitani);
    fprintf('Třída %d načena\n', i)
end
fprintf('\nNačítám aktuální stav: ')
waitbar(0,nacitani,"Načítám data o aktuálním stavu.... (5/5)")
nacistSlozky('./DATA/data.txt',10,'ucitel',nacitani);
fprintf('Vzorová data načtena\n')
fprintf('Načítání dat hotovo.') 
close(nacitani)
close all
