function x_n = seven(f, ig, tol, maxN)

converged = false;  % Convergence
x_n = ig;  % Initial Guess
x_nminus1 = 0; % Secant method requires x_n-1.

for i=1:1:maxN
    
    temp = x_n;
    % Secant Iteration Formula
    x_n = x_n - f(x_n)*((x_n)-(x_nminus1))/(f(x_n)-f(x_nminus1));
    x_nminus1 = temp;
    disp('\n Iteration #' + i);
    disp('\n' + x_n);

    % Stopping Criteria
    if (abs(f(x_n)) + abs(x_n-x_nminus1)) < tol
        disp('f Converges!')
        converged = true;
        break;
    end
end

% Check if f(x_n) diverged.
if i == maxN && converged == false
    disp('f Did Not Converge!')
end