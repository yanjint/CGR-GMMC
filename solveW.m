function W =solveW(A,mu,K0,q,c)

n = size(A{1},1);
m=length(A);

A0 = zeros(n,n);
 for v = 1 : m
        A0 = A0 + q(v)*A{v};
end
A_temp = 2*A0 + mu * K0;
[W, ~, ~] = eig1(A_temp, n, 1);
W = W(:,2:c+1);

end