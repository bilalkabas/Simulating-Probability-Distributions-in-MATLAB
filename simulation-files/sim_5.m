% Measurements of cars, 1970–1982
load carbig.mat
S = Horsepower;
S = sort(S(~isnan(S)));

% Plot PMF
subplot(3,1,1)
histogram(S,'Normalization','Probability')
title("PMF of X")
xlabel("X (Horsepower)")
ylabel("Probability")

% Fit 'Gamma' distribution
subplot(3,1,2)
pd = fitdist(S,'gamma');
y = pdf('gamma',S,pd.a,pd.b);
plot(S, y,'linewidth',3)
ylim([0 0.013])
title("PDF of X")
xlabel("X (Horsepower)")
ylabel("Probability")

threshold = 220;    % Threshold
T = find(S==threshold);
T = T(1);

A = 0;             % Area under the curve
for i=1:T
   A = A + (S(i+1)-S(i))*y(i);
end

% Plot the area
subplot(3,1,3)
plot(S,y,'linewidth',3);
title("Area under PDF")
xlabel("X (Horsepower)")
ylabel("Probability")
ylim([0 0.013])
hold on
area(S(1:T), y(1:T));

% Annotation
str = sprintf("P(X < " + threshold + ") = " + A);
annotation('textbox',[0.15 0.15 .1 .15],'String',str,'EdgeColor','none',...
    'FitBoxToText','on','background','#e6e6e6','color','#0f72ba')
