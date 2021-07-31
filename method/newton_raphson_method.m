%% Newton Raphson Method
%% 이름 : 황찬준, 학번 : 201729183
clc; clear; close all;

f = @(x) x.^3 - 10*x.^2 + 5;
fx = @(x) 3*x.^2 - 20*x;

plot(-1:0.01:2, f(-1:0.01:2))

%%

x = 0.6;
ep = 1e-5;

if f(x) == 0
    disp('solution is the initial x')
end

for n = 1:1000
    
    x = x - f(x)/fx(x);
    
    if abs(f(x)) < ep
        [x,n]
        break;
    end
end