clc;clear;close all;

t=-20:0.001:20;
x=0;
for l=1:2:50;
    x=x+4/(l*pi)*sin(l*t);
end

f=-20:0.001:20;
H1=1./(0.1+j*2*pi*f);
H2=1./(1+j*2*pi*f);
H3=1./(10+j*2*pi*f);

y1=0;
for l=1:2:50;
    y1=y1+4/(l*pi)*abs(1./(0.1+j*l))*sin(l*t+angle(1./(0.1+j*l)));
end

y2=0;
for l=1:2:50;
    y2=y2+4/(l*pi)*abs(1./(1+j*l))*sin(l*t+angle(1./(1+j*l)));
end

y3=0;
for l=1:2:50;
    y3=y3+4/(l*pi)*abs(1./(10+j*l))*sin(l*t+angle(1./(10+j*l)));
end

h1=exp(-0.1*t).*(heaviside(t));
h2=exp(-1*t).*(heaviside(t));
h3=exp(-10*t).*(heaviside(t));

figure(1)
subplot(3,1,1)
plot(t,h1)
subplot(3,1,2)
plot(t,h2)
subplot(3,1,3)
plot(t,h3)

figure(2)
subplot(3,1,1)
plot(f,abs(H1))
subplot(3,1,2)
plot(f,abs(H2))
subplot(3,1,3)
plot(f,abs(H3))

figure(3)
subplot(3,1,1)
plot(f,angle(H1))
subplot(3,1,2)
plot(f,angle(H2))
subplot(3,1,3)
plot(f,phase(H3))

figure(4)
plot(t,x)

figure(5)
subplot(3,1,1)
plot(t,y1)
subplot(3,1,2)
plot(t,y2)
subplot(3,1,3)
plot(t,y3)