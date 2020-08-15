P_tails = 0.35;     % Probability of obtaining tails
N = 100;

% Create a weighted array according to 'p'
W = [ones(1,P_tails*100) zeros(1,(100-P_tails*100))];
S = zeros(1,10000);
I = 10000;          % # of iteration

% Toss the coin for N times in each iteration
for x=1:I
   S(x) = sum(W(randi([1 100],1,N)));
end

% Plot PMF
histogram(S,'Normalization', 'Probability');
title("PMF of X")
xlabel("X (Number of Tails)")
ylabel("Probability")

% Expected Value
mu = 0;
for x=1:N
    p = sum(S(:) == x)/I;
    mu = mu + x*p;
end

% Variance
var = 0;
for i=1:length(S)
    var = var + (S(i) - mu)^2;
end
var = var/(I-1);

FS = 22;
% Annotation
str = sprintf("E(X) = " + mu + "\nStd = " + sqrt(var) + "\nVar = " + var);
annotation('textbox',[0.19 .14 .1 .15],'String',str,'EdgeColor','none',...
    'FitBoxToText','on','background','#e6e6e6','color','#0f72ba')