function [fr,P1]=FFT_vibro(vstup)
% provede FFT pro nasledujici parametry:

Fs = 1000;            % Sampling frequency
T = 1/Fs;             % Sampling period
L = 2000;             % Length of signal
t = (0:L-1)*T;        % Time vector

%vysledna FFT:
FFT_out=fft(vstup);

P2 = abs(FFT_out/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

fr = Fs*(0:(L/2))/L;

% vystup : fr,P1

end