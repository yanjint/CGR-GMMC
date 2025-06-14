clear all
clc

addpath(genpath('./'))

load('MSRC.mat')
m = length(X);
c = length(unique(Y));

% standardize the data
for j=1: m
    colnum=size(X{j},2);
    mole = std(X{j},0,2);
    mole(mole==0) = 1;
    X{j}=(X{j}-mean(X{j},2))./mole;
end

%generate graph
k=9;
G = generate_graph(X, k);
[F, ~, ~] = prepare(G, c);

alpha=[1e-1];
beta=[1];
mu=[1];

for i=1:m
    X{i}=X{i}';
end
for i=1:length(alpha)
    for j=1:length(beta)
        disp('Start running the algorithm...');
        [label]=main(G,X,F,c,alpha(i),beta(j),mu);

        result(j,:) = ClusteringMeasure(Y,label);

    end
end










