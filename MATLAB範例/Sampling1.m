clc; clear; close all;

f=0.1;

t=0:0.01:10;
x=sin(2*pi*f*t);
y=(t==1)+(t==2)+(t==3)+(t==4)+(t==5)+(t==6)+(t==7)+(t==8)+(t==9)+(t==10);
z=x.*y;

plot(t,x)
hold on
stem(t,y,'r')
hold on
stem(t,z,'g')
title('Sampling')
xlabel('Time')
ylabel('Comb Signal, CT Signal, and DT Signal')







