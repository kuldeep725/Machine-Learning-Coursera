function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%     earlier method
%     A = [theta(1) theta(2) -1];
%     B = [X'; y'];
%     C = A*B;

%     earlier 2 method
% C = theta' * X' - y';
% sq_sum = sum(sum(C.^2));
% J = sq_sum/(2*m);

%     final method
      J = (1 / (2*m) ) * sum(((X * theta)-y).^2);
% =========================================================================

end
