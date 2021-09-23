clear 

data= table();
for i=1:50

    body=randi([0,100]);
    vysledek=hodnoceni(body);
    data.body(i)=body;
    data.vysledek(i)=vysledek;
end
                    