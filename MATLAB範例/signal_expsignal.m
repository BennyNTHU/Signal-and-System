clc;clear;close all;

t=0:0.1:20;

p_clx_exp_sgl=exp(+j*t);
n_clx_exp_sgl=exp(-j*t);

figure(1)
subplot(2,1,1)
plot(t,real(p_clx_exp_sgl))
xlabel('t')
ylabel('Real Part of x(t)')
title('real part of p_clx_exp_sgl')
subplot(2,1,2)
plot(t,imag(p_clx_exp_sgl))
xlabel('t')
ylabel('imaginary part of x(t)')
title(' imaginary part of p_clx_exp_sgl')

figure(2)
subplot(2,1,1)
plot3(t,real(p_clx_exp_sgl), imag(p_clx_exp_sgl))
xlabel('t')
ylabel('Re{x(t)}')
zlabel('Im{x(t)}')
title('p_clx_exp_sgl')

subplot(2,1,2)
plot3(t,real(n_clx_exp_sgl), imag(n_clx_exp_sgl))
xlabel('t')
ylabel('Re{y(t)}')
zlabel('Im{y(t)}')
title('n_clx_exp_sgl')

hold on

