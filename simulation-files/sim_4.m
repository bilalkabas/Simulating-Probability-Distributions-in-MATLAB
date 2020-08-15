L = 500;            % Average # of people per hour
precision = 36000;   % Smallest time interval is 1 second
% Create a weighted array according to 'L'
W = [ones(1,L) zeros(1,precision-L)];
I = 10000;           % # of iterations
S = zeros(1,I);

% Get 3600 samples from weighted array in each iteration
for i=1:I
   S(i) = sum(W(randi([1 precision],1,precision)));
end

% Plot PMF
histogram(S,'Normalization','Probability');
title("PMF of X")
xlabel("X (Number of people)")
ylabel("Probability")

% Expected Value
mu = 0;
p = zeros(1,I);
for x=min(S):max(S)
    p = sum(S(:) == x)/I;
    mu = mu + x*p;
end

% Variance
var = 0;
for i=1:length(S)
    var = var + (S(i) - mu)^2;
end
var = var/(I-1);

% Annotation
str = sprintf("E(X) = " + mu + "\nStd = " + sqrt(var) + "\nVar = " + var);
annotation('textbox',[0.19 .14 .1 .15],'String',str,'EdgeColor','none',...
    'FitBoxToText','on','background','#e6e6e6','color','#0f72ba')
