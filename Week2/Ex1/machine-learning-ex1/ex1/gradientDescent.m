function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
%     earlier method
%     A = [theta(1) theta(2) -1];
%     B = [X'; y'];
%     C = A*B;

%     earlier 2 method
%     C = theta' * X' - y';
    C = (X * theta)-y;
    diff1 = sum(C.* X(:,1));
    diff2 = sum(C.* X(:,2)); 
    theta(1) = theta(1) - (1/m).* alpha.* diff1;
    theta(2) = theta(2) - (1/m).* alpha.* diff2;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
%     disp(J_history(iter));

end
% plot(1:1:num_iters, J_history);
end
