%% Regular Falsi Method
%% 이름 : 황찬준, 학번 : 201729183
clc; clear; close all;

f = @(x) x.^3 - 10*x.^2 + 5;

plot(-1:0.01:2, f(-1:0.01:2))

%%

x = [0.6, 0.8];
ep = 1e-5;

if f(x(1))*f(x(2)) > 0
    disp('wrong!');
elseif f(x(1)) < 0
    xL = x(1);
    xR = x(2);
    
else
    xL = x(2);
    xR = x(1);
end

%%

for n = 1:1000
    
    xm = (xL*f(xR) - xR*f(xL))/(f(xR) - f(xL));
    
    if f(xm) < 0
        xL = xm;
    else
        xR = xm;
    end
    

    if abs(f(xm)) < ep
        [xm,n]
        break;
    end
end