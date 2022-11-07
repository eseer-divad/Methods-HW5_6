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

%% Newton (Question 6)
est = six(f,df,ig,tol,maxN);

% Output Addendum (Question 6)
disp("f(x) = " + func2str(f))
disp("Tolerance: " + tol)
disp("Initial Guess: " + ig)
disp("Estimate: " + est)

% Press Any Key to Continue...
input('Press Any Key to Continue...');

%% Secant (Question 7)

% ---
% Repeated Inputs from Question 6 **
% ---

% Comment:
% Lots of iterations required to achieve tol
% compared to Newton's. 

ig = 10;  
maxN = 2000; 

est = seven(f,ig,tol,maxN);

% Output Addendum (Question 7)
disp("f(x) = " + func2str(f))
disp("Tolerance: " + tol)
disp("Initial Guess: " + ig)
disp("Estimate: " + est)

% Press Any Key to Continue...
input('Press Any Key to Continue...');

%% Error Array R_n (Question 8)

% Part A: Ratio where p = 2, f = x*exp(-x)

% Declare Inputs
f = @(x) x*exp(-x);
df = @(x) exp(-x)*(1-x);
ig = 0.5;
tol = eps('single');
p = 2;
maxN = 50;
sol = 0;
error = ones(1, maxN+1);

[x_n, error] = eight(f, df, ig, tol, p, maxN, sol, error);

% Press Any Key to Continue...
input('Press Any Key to Continue...');

% Part B: Ratio where p = 2, f = 2-e^x

% Listed x-naut inputs.

% ig = 0.5;
% ig = 1.0;
% ig = 1.5;

% Press Any Key to Continue...
input('Press Any Key to Continue...');

% Part C: Ratio where p = 1.99, f = x*exp(-x)

% Press Any Key to Continue...
input('Press Any Key to Continue...');



