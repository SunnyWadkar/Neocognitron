clc;
clear all;
loops=40;
I=getTrainingdata();
t=getTestdata();
[s a b c d]=InitializeNetwork();
runTrainingSet(s,a,b,c,d,I,loops);
runTestSet(I,s,a,b,c,d);
