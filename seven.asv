function x_nplus1 = seven(f, ig1, ig2, tol, maxN)

converged = false;  % Convergence
x_n = ig1;  % Initial Guess
x_nminus1 = ig2; % Secant method requires x_n-1.

for i=1:1:maxN
    % Secant Iteration Formula
    x_nplus1 = x_nminus1 - f(x_nminus1)*((x_n)-(x_nminus1)/(f(x_n)-f(x_nminus1)));
    disp('\n Iteration #' + i);
    disp('\n' + x_nplus1);

    % Stopping Criteria
    if (abs(f(x_nplus1)) + abs(x_nplus1-x_n)) < tol
        disp('f Converges!')
        converged = true;
        break;
    end
end

% Check if f(x_n) diverged.
if i == maxN && converged == false
    disp('f Did Not Converge!')
end