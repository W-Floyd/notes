clear all;
pkg load statistics;
pkg load image;

global SetSize = 10;
global DegFree = SetSize-1;
global Replicates = 10;
global Confidence = 0.95;
a=1-(1-Confidence)/2;

function retval = sumSquares(data)
  retval = sum((data-mean(data)).^2);
endfunction

global TargetMean = 10;
global TargetStd = 10;

Za=norminv(a);
Ta=tinv(a, SetSize-1);

for c = 1:Replicates
  randomData = normrnd(TargetMean, TargetStd, SetSize, 1);
  Data(:,c) = randomData;
  Mean(c) = mean(randomData);
  Variance(c) = var(randomData);
  Z0(c)=(Mean(c)*sqrt(SetSize));
  T0(c)=(Mean(c)/sqrt(Variance(c)/SetSize));
  StdDev(c)=std(randomData);
  SumSquares(c)=sumSquares(randomData);
end

clear randomData SetSize Replicates c DegFree Confidence;

VarianceMean = mean(Variance);
VarianceSumSquaraes = sumSquares(Variance);
VarianceVariance = var(Variance);
VarianceStd = std(Variance);
MeanMean = mean(Mean);
MeanVariance = var(Mean);
MeanStd = std(Mean);
MeanSumSquares = sumSquares(Mean);
StdDevMean = mean(StdDev);
SumSquaresMean = mean(SumSquares);

histeq(Data,10)