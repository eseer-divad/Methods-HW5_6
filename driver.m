%% David Reese : Homework 5&6 %%

% KEY VARIABLES:
%   - 'f' - function
%   - 'df' - derivative of f
%   - 'ig' - initial guess
%   - 'tol' - tolerance
%   - 'maxN' - max amt. of iterations
%   - 'sol' - r-value, exact solution

% SUBSCRIPTS (in function code):
%   - 'x_n' - nth x iteration, "x-sub-n"
%   - 'x_nminus1' - (n-1)th x iteration, "x-sub-(n-1)"

% ERROR ARRAY (Questions 8-9):
%   - 'error()' - R_n array by ratio provided.
%   - 'p' degree variable found in denominator or ratio R_n

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

% Had to change maxN.

% Comparison:
% Lots of more iterations required to achieve tol
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

% Declare Inputs
f = @(x) 2-exp(x);
df = @(x) 0-exp(x);
ig = 0.5;
tol = eps('single');
p = 2;
maxN = 50;
sol = 0;
error = ones(1, maxN+1);

[x_n, error] = eight(f, df, ig, tol, p, maxN, sol, error);

% Press Any Key to Continue...
input('Press Any Key to Continue...');

% Part C: Ratio where p = 1.99..., f = x*exp(-x)

% Note: Initially started with p = 1.99, very far off.
% p is very very sensitive.

% Declare Inputs
f = @(x) x*exp(-x);
df = @(x) exp(-x)*(1-x);
ig = 0.5;
tol = eps('single');
p = 1.999999999;
maxN = 50;
sol = 0;
error = ones(1, maxN+1);

[x_n, error] = eight(f, df, ig, tol, p, maxN, sol, error);

% Press Any Key to Continue...
input('Press Any Key to Continue...');

%% Error Array R_n : f = e^x^2 (Question 9)

% Using eight.m:

% Part A: Ratio where p = 2

% Declare Inputs
f = @(x) 1-exp(x*x);
df = @(x) -2*x*exp(x*x);
ig = 1;
tol = eps('single');
p = 2;
maxN = 50;
sol = 0;
error = ones(1, maxN+1);

[x_n, error] = eight(f, df, ig, tol, p, maxN, sol, error);

% Press Any Key to Continue...
input('Press Any Key to Continue...');

% Part B: Ratio where p = 1

% Declare Inputs
f = @(x) 1-exp(x*x);
df = @(x) -2*x*exp(x*x);
ig = 1;
tol = eps('single');
p = 1;
maxN = 50;
sol = 0;
error = ones(1, maxN+1);

[x_n, error] = nine(f, df, ig, tol, p, maxN, sol, error);

% Note: when I got to this portion of problem 9, to account
% for the abs() in the denominator, I changed eight.m to 
% reflect it. That is the only difference between eight.m
% and nine.m

% Press Any Key to Continue...
input('Press Any Key to Continue...');


