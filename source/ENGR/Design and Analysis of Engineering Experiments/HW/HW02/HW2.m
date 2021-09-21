clear all;
pkg load statistics;
close("all");

Sizes = { 10, 30, 100 };
Mu = { 0, 1, 0 };
Variance = { 1, 1, 4 };

Data={}
Data=cell(length(Sizes),length(Mu));

for c = 1:length(Sizes)
  for d = 1:length(Mu)
    Data(c,d) = sort(normrnd(Mu{d}, Variance{d}^0.5, 1, Sizes{c}));
  endfor
endfor



figure(2);
boxplot(Data);

##
##
##figure(1);
##n=0;
##
##for c = 1:length(Sizes)
##  for d = 1:length(Mu)
##    n+=1;
##    subplot(length(Sizes),length(Mu),n);
##    hist(Data{c,d});
##    title (["N(" num2str(Mu{d}) "," num2str(Variance{d}) ") of size " num2str(Sizes{c})]);
##  endfor
##endfor