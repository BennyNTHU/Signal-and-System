clc;clear;close all;

a=0.1;
T=10;

t1=-20:0.001:20;
x1=exp(-a*t1).*(heaviside(t1)-heaviside(t1-T));

t2=-20:0.001:20;
xp=0;
for l=-10:1:10;
    xp=xp+exp(-a*(t2-l*T)).*(heaviside((t2-l*T))-heaviside((t2-l*T)-T));
end

t3=-20:1:20;
xpn=0;
for l=-10:1:10;
    xpn=xpn+exp(-a*(t3-l*T)).*(heaviside((t3-l*T))+0.5*(t3==l*T)-heaviside((t3-l*T)-T)-0.5*(t3==(l+l)*T));
end

f1=-20:0.001:20;
X1=1./(a+j*2*pi*f1).*(1-exp(-(a+j*2*pi*f1)*T));

N=10;
k=-20:1:20;
Xp=1./(a+j*2*pi*(k/T)).*(1-exp(-(a+j*2*pi*(k/T))*T));

N=10;
k=-20:1:20;
Xpk=(1-exp(-a*N))./(1-exp(-(a+j*2*pi*k/N)));

figure(1)
plot(t2,xp)
axis([-20,20,0,1])

figure(2)
stem(t3,xpn)
axis([-20,20,0,1])

figure(3)
stem(k,abs(Xp))
axis([-20,20,0,10])

figure(4)
stem(k,abs(Xpk))
axis([-20,20,0,10])
