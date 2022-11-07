function x_nplus1 = six(f, df, ig, tol, maxN)

converged = false;  % Convergence
x_nplus1 = ig;  % Initial Guess

for i=1:1:maxN

    % Newton's Iterative Calculation
    x_n = x_nplus1;
    x_nplus1 = x_n - f(x_n)/df(x_n);
    disp('\n Iteration #' + i);
    disp('\n' + x_nplus1)

    % Convergence Check
    if (abs(f(x_nplus1)) + abs(x_nplus1-x_n)) < tol
        disp('f Converges!')
        converged = true;
        break;
    end
end

% Check if f(x_n) diverged.
if i == maxN && converged == false
    disp('f Diverges!')
end

