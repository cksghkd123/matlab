%% Gaussian Elimination
%% 이름 : 황찬준, 학번 : 201729183
clc; clear; close all;

A = [2 -1 -1;0 1 1;1 1 -1];
b = [0; 2; 1];

M = length(b);

%%
a = zeros(3,3,3);
a(:,:,1) = A;

bm = zeros(3);
bm(:, 1) = b;

%%
for k = 1:M-1 %floor
    
    for m = k+1:M
        for n = k+1:M
            a(m, n, k+1) = a(m, n, k) - (a(m, k, k)/a(k, k, k))*a(k, n, k);
        end
        b(m, k+1) = b(m,k) - (a(m, k, k)/a(k, k, k))*b(k, k);
    end
end


%%
x = zeros(M, 1);
x(M) = b(M, M)/a(M, M, M);
for m = M-1:-1:1
        x(m) = (b(m,m) - a(m,m+1:M, m)*x(m+1:M))/a(m, m, m);
end
A*x