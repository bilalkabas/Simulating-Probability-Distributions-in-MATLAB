deck = [1 2 3 4 5 6 7 8 9 10];
N = 1000;
% Simulate drawing N cards from the deck
S = deck(randi([1 10],1,N));

% Plot PMF
histogram(S,'normalization','probability')
title("PMF of X")
xlabel("X (Numbers from 1 to 10)")
ylabel("Probability")

% Expected Value
mu = 0;
for x=1:10
    p = sum(S(:) == x)/N;
    mu = mu + x*p;
end

% Variance
var = 0;
for i=1:length(S)
    var = var + (S(i) - mu)^2;
end
var = var/(N-1);

% Annotation
str = sprintf("E(X) = " + mu + "\nVar = " + var);
annotation('textbox',[0.19 .1 .1 .15],'String',str,'EdgeColor','none',...
    'FitBoxToText','on','background','#e6e6e6','color','#0f72ba')