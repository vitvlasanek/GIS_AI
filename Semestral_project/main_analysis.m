urceni_dnu;
fprintf('Načítám vzorová data...')
nacistSlozky('./DATA/data.txt',1000,'ucitel');
fprintf('Vzorová data načtena...')
for i=1:4
    fprintf('Načítám třídu %d...', i)
    nacistSlozky('/DATA/Trida' + string(i) +'.txt',600,'vystup' + string(i));
    fprintf('Třída %d načena...', i)
end
%{ 
TOTO URČITĚ FUNGUJE:
    nacistSlozky('./DATA/Trida0.txt',600,'vystup0');
    nacistSlozky('./DATA/Trida1.txt',600,'vystup1');
    nacistSlozky('./DATA/Trida2.txt',600,'vystup2');
    nacistSlozky('./DATA/Trida3.txt',600,'vystup3');
%}
fprintf('Načítání dat hotovo.') 
