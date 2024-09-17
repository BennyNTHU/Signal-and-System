clc; clear; close all;

for k=-1:0.01:10
    den=[1 2*k 1];
    poles=roots(den)
    plot(real(poles),imag(poles),'bx');
    hold on;
end

den_end=[1 2*(-1) 1];
poles_end=roots(den_end)
plot(real(poles_end),imag(poles_end),'kx','markersize',10,'Linewidth',4);
hold on;

den_start=[1 2*0 1];
poles_start=roots(den_start)
plot(real(poles_start),imag(poles_start),'rx','markersize',10,'Linewidth',4);
hold on;

den_start=[1 2*1 1];
poles_start=roots(den_start)
plot(real(poles_start),imag(poles_start),'rx','markersize',10,'Linewidth',4);
hold on;

den_start=[1 2*10 1];
poles_start=roots(den_start)
plot(real(poles_start),imag(poles_start),'rx','markersize',10,'Linewidth',4);
hold on;

f=0.001:0.001:10;
H=(4+36*pi^2.*f.^2).^0.5./((2-4*pi^2.*f.^2).^2+36*pi^2.*f.^2).^0.5;
A=atan(3*pi*f)-atan((6*pi*f)./(2-4*pi^2.*f.^2));

figure(2)
subplot(2,1,1)
plot(f,H)
subplot(2,1,2)
plot(f,A)

figure(3)
subplot(2,1,1)
semilogx(f,H)
subplot(2,1,2)
semilogx(f,A)
