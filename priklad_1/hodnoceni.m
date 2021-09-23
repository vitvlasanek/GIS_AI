function [vysledek] = hodnoceni(body)
%HODNOCENI Prevede body na hodnoceni A-F
if body<50
    vysledek='F';
elseif body<60
    vysledek='E';
elseif body<70
    vysledek='D';
elseif body<80
    vysledek='C';
elseif body<90
    vysledek='B';
else
    vysledek='A';
end

