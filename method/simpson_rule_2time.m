clc; clear; close all;

x1 = 0;
xend = 2;
N = 20;
x = linspace(x1, xend, 2*N+1);
h = (xend - x1)/(2*N);

%%
f = @(x) x.^2;

%%
i= h/3*(f(x(1)) + f(x(end)) ...
    + 4*sum(f(x(2:2:end-1))) ...
    + 2*sum(f(x(3:2:end-1))))