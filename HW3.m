clc;clear;close all;

a=0.1;
T=10;

t1=-20:1:20;
x1=exp(-a*t1).*(heaviside(t1)+0.5*(t1==0)-heaviside(t1-T)-0.5*(t1==T));

t2 = -20:1:20;
xp=0;
for l=-10:1:10;
    xp = xp+exp(-a*(t2-l*T))...
        .*(heaviside((t2-l*T))+0.5*(t1==l*T)-heaviside((t2-l*T)-T)-0.5*(t1==(1+l)*T));
end

f1=-10:0.001:10;
X1=(1-exp(-(a+j*2*pi*f1)*T))./(1-exp(-(a+j*2*pi*f1)*l));

k=-10:1:10;
Xp=(1-exp(-(a+j*2*pi*k/T)*T))./(1-exp(-(a+j*2*pi*k/T)*l));

figure(1)
stem(t1,x1)
axis([-20,20,0,1])

figure(2)
stem(t2,xp)
axis([-20,20,0,1])

figure(3)
subplot(2,1,1)
plot(f1,abs(X1))
axis([-1,1,0,10])
subplot(2,1,2)
plot(f1,phase(X1))
axis([-1,1,-2,2])

figure(4)
subplot(2,1,1)
stem(k,abs(Xp))
axis([-10,10,0,10])
subplot(2,1,2)
stem(k,phase(Xp))

figure(5)
plot(f1,abs(X1))
axis([-1,1,0,10])

figure(6)
stem(k,abs(Xp),'r')
axis([-10,10,0,10])

