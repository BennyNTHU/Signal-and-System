clc;clear;close all;

n=-100:1:100;
fc=0.05;
alpha=20;

h=sin(2*pi*fc*(n-alpha))./(pi*(n-alpha));
h(n==alpha)=2*fc; 


stem(n,h)
xlabel('n')
ylabel('h[n]')
title('Sinc Function')

