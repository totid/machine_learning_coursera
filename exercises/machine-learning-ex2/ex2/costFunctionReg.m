function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


s = sigmoid(X * theta);
factor1 = [y .* log(s) + (1 - y) .* log(1 - s)];
factor2 = theta .^ 2;
J = -1/m * sum(factor1) + lambda / (2*m) * sum(factor2(2:end));
tmp = (s - y);
grad0 = 1/m * sum(tmp * X(1));
grad1 =  [1/m * sum(tmp .* X(:,2:end))'] + lambda / m .* theta(2:end);
grad = [grad0 grad1']';


% =============================================================

end


