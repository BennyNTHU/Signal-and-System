clc;clear;close all;
a=0.1;
T=10;

t1=-20:0.001:20;
x1=exp(-a*t1).*(heaviside(t1)-heaviside(t1-T));

t2=-20:0.001:20;
xp=0;
for l=-10:1:10;
    xp=xp+exp(-a*(t2-l*T)).*(heaviside(t2-l*T)-heaviside(t2-l*T-T));
end

f1=-10:0.001:10;
X1=1./(a+j*2*pi*f1).*(1-exp(-(a+j*2*pi*f1)*T));

f2=-10:1/T:10;
Xp=1/T*1./(a+j*2*pi*f2).*(1-exp(-(a+j*2*pi*f2)*T));


figure(1)
plot(t1,x1)
axis([-20,20,0,1])

figure(2)
plot(t2,xp)
axis([-20,20,0,1])

figure(3)
subplot(2,1,1)
plot(f1,abs(X1))
axis([-1,1,0,10])
subplot(2,1,2)
plot(f1,phase(X1))

figure(4)
subplot(2,1,1)
stem(f2,abs(Xp),'^')
axis([-1,1,0,1])
subplot(2,1,2)
stem(f2,phase(Xp))

figure(5)
plot(f1,abs(X1))
hold on
stem(f2,T*abs(Xp),'r')
axis([-1,1,0,10])