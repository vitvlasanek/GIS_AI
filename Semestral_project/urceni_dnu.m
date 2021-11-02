clear
clc

DATA = load('./DATA/data.txt'); % nacte data, ktera jsou dostupna
RMS = rms(transpose(DATA)); % vypocita efektivni hodnotu
plot(RMS)
n = length(RMS);
for i = 2:n
    if abs(RMS(i) - RMS(i-1)) > 0.5 % porovna predchozi efektivni hodnotu vibraci s aktuaální efektivni hodnotou vibraci 
    fprintf('Stroj byl opraven dne: %d\n',i+1) % zobrazi kdy byl stroj opraven
    end
end