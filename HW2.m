clc;clear;close all;

a=0.1;
fo=0.4;

t=-20:0.001:100;
x1 = exp(-a*t).*cos(2*pi*fo*t).*heaviside(t);

f1 = -2:0.001:2;
X1 = (a+j*2*pi*f1)./((a+j*2*pi*f1).^2+(2*pi*fo)^2);

n = -20:1:100;
x2 = exp(-a*n).*cos(2*pi*fo*n).*heaviside(n);

f2 = -2:0.001:2;
N = 11;
X2 = 0;

for k=1:1:2*N+1;
    X2 = X2 + (a+j*2*pi.*(f2-(k-N-1)))./((a+j*2*pi*(f2-(k-N-1))).^2+(2*pi*fo)^2);
end

figure(1)
plot(t,x1)

figure(2)
subplot(2,1,1)
plot(f1,abs(X1))
subplot(2,1,2)
plot(f1,phase(X1))

figure(3)
stem(n,x2,'^')

figure(4)
subplot(2,1,1)
plot(f2,abs(X2))
subplot(2,1,2)
plot(f2,phase(X2))

figure(5)
plot(t,x1)
hold on;
stem(n,x2,'r','^')
axis([-20,100,-1,1])

figure(6)
plot(f1,abs(X1))
hold on;
plot(f2,abs(X2),'r')
axis([0-.5,0.5,-inf,+inf])

