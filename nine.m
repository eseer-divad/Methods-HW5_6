function [x_n, error] = nine(f, df, ig, tol, p, maxN, sol, error)

converged = false; % Convergence
x_n = ig;  % Initial Guess
error(1)=abs(x_n); % Error Array (R_n)
r = sol; 
x_nplus1 = 0;

for i=1:1:maxN

    % Newton's Iterative Calculation
    x_nplus1 = x_n - f(x_n)/df(x_n);
    error(i+1) = abs(x_n-r)/abs((x_n-r)^p);
    

    disp('\n Iteration #' + i);
    disp('\n' + x_nplus1)
    disp('Error: ' + error(i+1))
    
    % Stopping Criteria
    if (abs(f(x_nplus1)) + abs(x_nplus1-x_n)) < tol
        disp('f Converges!')
        converged = true;
        break;
    end
    x_n = x_nplus1;
end

% Check if f(x_n) diverged.
if i == maxN && converged == false
    disp('f Did Not Converge!')
end