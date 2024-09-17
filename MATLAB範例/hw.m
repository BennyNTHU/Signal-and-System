clc;clear;close all;

n=-30:1:30;
Tp=1;    % Assume Tp=1
h=Tp/5.*sin(pi*n./5)./(pi*n/5); % sinc function
h(n==0)=Tp/5;   % assign the value of sinc(0)

figure(1)
title('Sinc Function')
plot(n,h,'--g');    % plot the envelope
hold on;
stem(n,h,'^m');     % plot delta functions
xlabel('f')
ylabel('F(f)')
