%% Jacobi method 2
%% 이름 : 황찬준, 학번 : 201729183
clc; clear; close all;

A = [2 -1;-1 2];
b = [0 3]';

X0 = [0 1]';
ep = 1e-5;

N = length(b);

%%
At = zeros(N); bt = zeros(N,1);
for i = 1:N
    for j = 1:N
        if i ~= j
            At(i, j) = -A(i, j)/A(i, i);
        end
    end
    bt(i) = b(i)/A(i, i);
end

%%

X = X0;
for k = 1:1000
    X = bt + At*X;
    
    if norm(A*X - b) < ep
        X
        k
        break;
        
    end
    
end