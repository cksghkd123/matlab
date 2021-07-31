clc; close; clear all;

h = 0.25;
t = 0:h:1;
N = length(t);

y_ex = @(y) 1 - exp(-t);

%% Euler's method
y = zeros(N,1);
for k = 1:N-1
    y(k+1) = y(k) + h*(1-y(k));
end

%% plot
figure;
plot(t, y_ex(t),'k-')
hold on;
plot(t, y, 'r--')
legend('exact','Euler')