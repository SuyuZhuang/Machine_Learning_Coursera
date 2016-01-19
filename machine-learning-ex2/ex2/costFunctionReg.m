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

theta_square = theta.^2;
sumtheta=sum(theta_square)-theta_square(1);

z = X*theta;
J = (1/m)*sum((-1*y'*log(sigmoid(z))-(1-y)'*log(1-sigmoid(z))))+lambda/(2*m)*sumtheta;


grad(1) = (1/m)*((sigmoid(z)-y)'*X(:,1));
grad(2:size(theta)) =(1/m)*((sigmoid(z)-y)'*X(:,2:size(theta)))+lambda/(m)*(theta(2:size(theta)))';
% =============================================================

end
