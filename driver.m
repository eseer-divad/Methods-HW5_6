%% David Reese : Homework 5&6 %%

clc
clear all
close all
format long

% Declare Inputs
f = @(x) x.^3-2; 
df = @(x)3*x.^2;
ig = 10;
tol = eps('single');
maxN = 50;

% Newton (Question 6)
est = six(f,df,ig,tol,maxN);

% Output Addendum (Question 6)
disp("f(x) = " + func2str(f))
disp("Tolerance: " + tol)
disp("Initial Guess: " + ig)
disp("Estimate: " + est)