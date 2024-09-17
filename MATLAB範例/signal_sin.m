clc;clear;close all;

t=-100:1:100;
fo=0.01;


x=sin(2*pi*fo*t);

figure()
subplot(2,1,1)
stem(t,x)
xlabel('t')
ylabel('x(t)')
title('Sin Function')
subplot(2,1,2)
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('Sin Function')


