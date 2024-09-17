clc; clear; close all;

f1=+0.4;
f2=-0.6;

t=0:0.01:10;
x1=sin(2*pi*f1*t);
x2=sin(2*pi*f2*t);

n=0:1:10;
y1=sin(2*pi*f1*n);
y2=sin(2*pi*f2*n);



figure(1)
plot(t,x1)
hold on
stem(n,y1,'r')
title('Sampling')
xlabel('Time')
ylabel('CT Signal and DT Signal')


figure(2)
plot(t,x2)
hold on
stem(n,y2,'r')
title('Sampling')
xlabel('Time')
ylabel('CT Signal and DT Signal')

figure(3)
subplot(211)
plot(t,x1)
subplot(212)
plot(t,x2)
title('Sampling')
xlabel('Time')
ylabel('CT Signals')

figure(4)
subplot(211)
stem(n,y1)
subplot(212)
stem(n,y2)
title('Sampling')
xlabel('Time')
ylabel('DT Signal')




