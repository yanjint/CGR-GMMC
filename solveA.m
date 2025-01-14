function A=solveA(X,q,alpha,E,W,mu)

m= length(X);
n=size(X{1},2);
A=cell(1,m);


for i=1:m
    A{i}=inv(X{i}'*X{i}+(mu*q(i)+alpha)*eye(n))*(X{i}'*X{i}-X{i}'*X{i}*E{i}+mu*q(i)*W*W');
end


end