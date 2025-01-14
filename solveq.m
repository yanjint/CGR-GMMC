function   q = solveq(A,W,mu)

m= length(A);

r=zeros(1,m);
q=zeros(1,m);
sum_sqr = 0;

for i=1:m
    r(i)=mu*norm(W*W'-A{i},'fro')^2;
    sum_sqr = sum_sqr+r(i)*r(i);
end

for i=1:m
    q(i)=r(i)/sum_sqr;
end

end