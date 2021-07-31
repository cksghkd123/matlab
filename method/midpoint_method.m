clc; close; clear all;

h = 0.25;
t = 0:h:1;
N = length(t);

y_ex = @(y) 1 - exp(-t);

%% Midpoint Method
y = zeros(N,1);
y(2) = y(1) + h*(1-y(1));

for k = 2:N-1
    y(k + 1) = y(k-1) + 2*h*(1-y(k))
end

%% plot
figure;
plot(t, y_ex(t),'k-')
hold on;
plot(t, y, 'r--')
legend('exact','Midpoint')