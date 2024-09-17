clc;clear;close all;

n=-5:1:15;
a1=0.1;
h1=a1.^n.*(heaviside(n)+0.5*(n==0));
a2=0.9;
h2=a2.^n.*(heaviside(n)+0.5*(n==0));

figure(1)
subplot(2,1,1)
stem(n,h1)
subplot(2,1,2)
stem(n,h2)

f=-0.5:0.001:0.5;
H1=1./(1-a1*exp(-j*2*pi*f));
H2=1./(1-a2*exp(-j*2*pi*f));

A1=1./(1+a1.^2-2*a1*cos(2*pi*f)).^0.5;
Theta1=-atan((a1*sin(2*pi*f))./(1-a1*cos(2*pi*f)));
A2=1./(1+a2.^2-2*a2*cos(2*pi*f)).^0.5;
Theta2=-atan((a2*sin(2*pi*f))./(1-a2*cos(2*pi*f)));

figure(2)
subplot(2,1,1)
plot(f,abs(H1))
axis([-0.5,0.5,-0.1,2])
subplot(2,1,2)
plot(f,phase(H1))
axis([-0.5,0.5,-0.2,0.2])

figure(3)
subplot(2,1,1)
plot(f,A1)
axis([-0.5,0.5,-0.1,2])
subplot(2,1,2)
plot(f,Theta1)
axis([-0.5,0.5,-0.2,0.2])

figure(4)
subplot(2,1,1)
plot(f,abs(H2))
axis([-0.5,0.5,-0.1,12])
subplot(2,1,2)
plot(f,phase(H2))
axis([-0.5,0.5,-2,2])

figure(5)
subplot(2,1,1)
plot(f,A2)
axis([-0.5,0.5,-0.1,12])
subplot(2,1,2)
plot(f,Theta2)
axis([-0.5,0.5,-2,2])

n=-10:1:20;
x1=(1/8)*(1+(-1).^n);
x2=(1/8)*(2*cos(pi/4*n));
x3=(1/8)*(2*cos(2*pi/4*n));
x4=(1/8)*(2*cos(3*pi/4*n));

x=x1+x2+x3+x4;
figure(6)
subplot(5,1,1)
stem(n,x1)
subplot(5,1,2)
stem(n,x2)
subplot(5,1,3)
stem(n,x3)
subplot(5,1,4)
stem(n,x4)
subplot(5,1,5)
stem(n,x)

f=0;
A0=1./(1+a1.^2-2*a1*cos(2*pi*f)).^0.5;
Theta0=-atan((a1*sin(2*pi*f))./(1-a1*cos(2*pi*f)));
f=1/8
A1=1./(1+a1.^2-2*a2*cos(2*pi*f)).^0.5;
Theta1=-atan((a1*sin(2*pi*f))./(1-a1*cos(2*pi*f)));
f=2/8
A2=1./(1+a1.^2-2*a1*cos(2*pi*f)).^0.5;
Theta2=-atan((a1*sin(2*pi*f))./(1-a1*cos(2*pi*f)));
f=3/8
A3=1./(1+a1.^2-2*a2*cos(2*pi*f)).^0.5;
Theta3=-atan((a1*sin(2*pi*f))./(1-a1*cos(2*pi*f)));

y1=(1/8)*A0*(1+(-1).^n)...
    +(1/4)*A1*cos(2*pi*(1/8)*n+Theta1)...
    +(1/4)*A2*cos(2*pi*(2/8)*n+Theta2)...
    +(1/4)*A3*cos(2*pi*(3/8)*n+Theta3);

f=0;
A0=1./(1+a2.^2-2*a2*cos(2*pi*f)).^0.5;
Theta0=-atan((a2*sin(2*pi*f))./(1-a2*cos(2*pi*f)));
f=1/8
A1=1./(1+a2.^2-2*a2*cos(2*pi*f)).^0.5;
Theta1=-atan((a2*sin(2*pi*f))./(1-a2*cos(2*pi*f)));
f=2/8
A2=1./(1+a2.^2-2*a2*cos(2*pi*f)).^0.5;
Theta2=-atan((a2*sin(2*pi*f))./(1-a2*cos(2*pi*f)));
f=3/8
A3=1./(1+a2.^2-2*a2*cos(2*pi*f)).^0.5;
Theta3=-atan((a2*sin(2*pi*f))./(1-a2*cos(2*pi*f)));

y2=1/8*A0*(1+(-1).^n)...
    +1/4*A1*cos(2*pi*(1/8)*n+Theta1)...
    +1/4*A2*cos(2*pi*(2/8)*n+Theta2)...
    +1/4*A3*cos(2*pi*(3/8)*n+Theta3);

figure(7)
subplot(2,1,1)
stem(n,y1)
subplot(2,1,2)
stem(n,y2)
