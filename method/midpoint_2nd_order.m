clc; close; clear all;

h = 0.25;
x = 0:h:1;
N = length(x);
y_ex = @(x,y) 100*x - 5*x.^2 +990*(exp(-0.1*x) - 1);

x0 = 0;
y0 = [0;1];

f = @(x,y) [y(2); -0.1*y(2) - x];

%% Midpoint 2nd Order method
x(1) = x0;
y(:, 1) = y0; 
x(2) = x(1) +h;
y(:,2) = y(:,1) + f(x(1), y(:,1))*h;

for n = 2:N-1
    y(:, n + 1) = y(:, n-1) + 2*f(x(n), y(:, n))*h;
end

%% plot
figure;
plot(x, y_ex(x),'k-','linewidth',1.5)
hold on; grid on;
plot(x, y(1,:), 'r--', 'linewidth',1.5)
legend('exact','Euler','location','southeast')