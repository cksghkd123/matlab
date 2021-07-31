%% SOR Method
clc; clear; close all;

A = [5 1 0;0 3 1;0 1 6];
b = [12 7 20]';

X0 = [1 1 1]';
ep = 1e-5;
ome = 1.072;

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

X = X0; X_old =X0;
for k = 1:1000
    X(1) = At(1, 2:N)*X(2:N) + bt(1);
    for m = 2:N
        X(m) = At(m, 1:m-1)*X(1,m-1) + At(m,m+1:N)*X(m+1,N) + bt(m);
    end
    
    X = ome*X + (1-ome)*X_old;
    
    if norm(A*X - b) < ep
        X
        k
        break;
    end
    X_old = X;
end