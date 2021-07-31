clc; clear; close all;

x1 = 0;
xend = 2;
N = 20;
x = linspace(x1, xend, N+1);
h = (xend - x1)/N;

%%
f = @(x) x.^2;

%% Trapozoidal rule
i = h/2*(f(x(1)) + 2*sum(f(x(2:end-1))) + f(x(end)))
