clc;clear;close all;

n=0:100:99;

h=heaviside(n);
h(n==0)=1 ;

stem(n,h)

xlabel('n')
ylabel('h[n]')
title('UnitStep Function')
