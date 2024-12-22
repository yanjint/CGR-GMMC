function E = solveE(X,A,beta)

m= length(X);
n=size(X{1},2);
E=cell(1,m);

for i=1:m
    E{i}=inv(X{i}'*X{i}+beta*eye(n))*(X{i}'*X{i}-X{i}'*X{i}*A{i});
end

end