% napred nutne ulozit model jako TM ve CL app

if exist('TM') %ukladam pokud existuje
    save('model','TM') 
end

clear
load model.mat

celkem=0;
dobre=0;
uspesnost=[];
skutecnost=[];
predikce_UI=[];

figure(1)
for i=1:250
    celkem=celkem+1;
    body_test=randi([0,100]);
    %musi byt ve stejnem formatu (table s polem "body")
    predikce=table();
    predikce.body=body_test;
    
    vysledek_UI = TM.predictFcn(predikce); 
    vysledek    = hodnoceni(body_test);
    
    if vysledek_UI==vysledek
        dobre=dobre+1;
    end
    
    %ulozeni do struktur
    uspesnost(i)=(dobre/celkem)*100;
    skutecnost{i,1}=vysledek;
    predikce_UI{i,1}=vysledek_UI;
   
    % grafy
    subplot(1,2,1)
    plot(uspesnost)
    grid on
    ylim([0,100])
    xlabel('pocet pokusu')
    ylabel('uspesnost (%)')
    titulek=sprintf('%d / %d (uspesnost: %.0f %%)',dobre,celkem,uspesnost(i));
    title(titulek)
    
    subplot(1,2,2)   
    confusionchart(skutecnost,predikce_UI);
    drawnow
end


    

        