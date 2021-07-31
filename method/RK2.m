clc; clear; close all;

x0 = 0;
x_end = 0.5;
h = 0.1;

f = @(x,y) sin(y);
y0 = 1;

%%
x(1) = x0;
y(1) = y0;

 n = 1;
 while x(n) < x_end
    
     k1 = h*f(x(n),y(n));
     k2 = h*f(x(n)+h,y(n)+k1);
     
     y(n+1) = y(n) + 1/2*(k1+k2);
     
     x(n+1) = x(n) + h;
     n = n +1;
 end