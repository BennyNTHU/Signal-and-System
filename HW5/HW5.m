clc;clear;close all;

t=-3:0.0001:3;
Wt=1;
xct1=rectpuls(t-0.47,Wt);
xctp=rectpuls(t-2.47,Wt)+rectpuls(t-0.47,Wt)+rectpuls(t+1.47,Wt);

n=-30:1:30;
Wn=10;
xdt1=rectpuls(n-5,Wn);
xdtp=rectpuls(n-25,Wn)+rectpuls(n-5,Wn)+rectpuls(n+15,Wn);

figure(1)
subplot(2,2,1)
plot(t,xct1,'k')
axis([-3,3,-0.2,1.19])
subplot(2,2,2)
stem(n,xdt1,'k')
axis([-30,30,-0.2,1.19])
subplot(2,2,3)
plot(t,xctp,'k')
axis([-3,3,-0.2,1.19])
subplot(2,2,4)
stem(n,xdtp,'k')
axis([-30,30,-0.2,1.19])

f1=-5:0.001:5;
Xctft=sin(pi*f1+eps)./(pi*f1+eps);

k1=-10:1:10;
Xctfs=sin(pi*k1/2+eps)./(pi*k1/2+eps);

f2=-0.5:0.001:0.5;
Xdtft=zeros(1,length(f2));
for n=1:length(xdt1)
    Xdtft(1,:)=Xdtft(1,:)+xdt1(n)*exp(-j*2*pi*f2*(n-31));
end

Xdtfs=zeros(1,20);
k2=1:1:20;
for n=31:1:50
    Xdtfs(k2)=Xdtfs(k2)+xdtp(n)*exp(-j*(k2-10)*2*pi*(n-31)/20);
end

figure(2)
subplot(2,2,1)
plot(f1,abs(Xctft),'k')
axis([-5,5,0,1.19])
subplot(2,2,2)
plot(f2,abs(Xdtft),'k')
axis([-0.5,0.5,0,11.9])
subplot(2,2,3)
stem(k1,abs(Xctfs),'k')
axis([-10,10,0,1.19])
subplot(2,2,4)
stem(k2,abs(Xdtfs),'k')
axis([0,20,0,11.9])

