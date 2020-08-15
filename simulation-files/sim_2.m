deck = [1 2 3 4 5 6 7 8 9 10];
N = 1000000;
S = zeros(1,N);

% Iterate N times drawning 4 random cards and sum the numbers on them
for i=1:N
    S(i) = sum(deck(randi([1 10],1,4)));
end

% Plot PMF
histogram(S,'normalization','probability');
title("PMF of X")
xlabel("X (Sum of 4 random numbers)")
ylabel("Probability")

% Expected Value
mu = 0;
for x=4:40
    p = sum(S(:) == x)/N;
    mu = mu + x*p;
end

% Variance
var = 0;
for i=1:length(S)
    var = var + (S(i) - mu)^2;
end
var = var/(N-1);

hold on

y = pdf('normal',sort(S),mu,sqrt(var));
plot(sort(S),y,'linewidth',3);

% Annotation
str = sprintf("E(X) = " + mu + "\nStd = " + sqrt(var) + "\nVar = " + var);
annotation('textbox',[0.19 .14 .1 .15],'String',str,'EdgeColor','none',...
    'FitBoxToText','on','background','#e6e6e6','color','#0f72ba')