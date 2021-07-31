clc; clear; close all;

N = 101;
x = linspace(0,2,N)*pi;
h = pi/50;

f = sin(x);
fp = cos(x);

%%
f_dm = zeros(1,N);
for n = 2:N-1
    f_dm(n) = (f(n+1) - f(n-1))/(2*h)
end