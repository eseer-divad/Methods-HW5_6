clc

format long 

% The function will graph complex answers x<0 ?
f1 = @(x) (log(x));

x=0:.0001:10;

plot (x,f1(x),'red')
legend('f(x) = ln(x)')
axis([-1 10 -10 10]);