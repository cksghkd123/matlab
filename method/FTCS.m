clc; clear; close all;

c = 1;

x0 = 0; xf = 10; M = 50;
x = linspace(x0,xf,M+1);
d = (xf-x0)/M;

tf = 2; N = 20;
t = linspace(0,tf,N+1);
dt = tf/N;

C = c*dt/(2*dx);

%%
u0 = exp(-(x-4).^2);
A = eye(M+1) + diag(-C*ones(1,M),1) + diag(C*ones(1,M),-1);
A(1,2) = 0; A(M+1,M) = 0;
%%
u = zeros(M+1,N+1);
u(:,1) = u0;
for n = 1:N
    u(:,n+1) = A*u(:,n);
end

%%
u_ex = zeros(M+1,N+1);
for n = 1:N+1
    u_ex(:,n) = exp(-(x-4 - c*t(n)).^2);
end

figure;
surf(x,t,u_ex','linestyle','none')
