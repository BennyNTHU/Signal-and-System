clc; clear; close all;

f=0.1;

t=0:0.01:10;
x=sin(2*pi*f*t);
n=0:1:10;
y=sin(2*pi*f*n);


plot(t,x)
hold on
stem(n,y,'r')
title('Sampling')
xlabel('Time')
ylabel('CT Signal and DT Signal')







