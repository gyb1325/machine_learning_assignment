function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
% [p,q] = size(X);
% X=[ones(p,1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
J = sum((X*theta - y).*(X*theta - y))/(2*m)+(lambda/(2*m))*(sum(theta .* theta)-sum(theta(1,:).*theta(1,:)));

for i=1:1:size(theta)
grad(i) =sum((X*theta - y).*X(:,i))/m + lambda*theta(i)/m;
end
grad(1)= grad(1)-lambda*theta(1)/m;












% =========================================================================

grad = grad(:);

end
