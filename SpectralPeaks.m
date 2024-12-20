clear;clc;close all;

load("Lab10_Section3_Signal "); %Load Data Set (canvas)

M = ASEN3112_Lab3_5;

Fs = 1/ (M(2,1)-M(1,1));
N = length(M(:,1));

    Y = fft(M(:,8));
    P2 = abs(Y/N);
    P1 = P2(1:N/2+1);
    P1(2:end-1) = 2*P1(2:end-1);
    
    f = Fs*(0:(N/2))/N;
    
    figure()
    hold on
    plot(f,P1/max(P1)) 
    
    xlim([0 51])
    title('Single-Sided Amplitude Spectrum of X(t)')
    xlabel('f (Hz)')
    ylabel('|P1(f)|')
    hold off
