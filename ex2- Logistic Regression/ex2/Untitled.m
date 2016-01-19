X=[1,1,0.5;1,1,1.5;1,2,1;1,3,1];
y=[0;0;1;0];
initial_theta = zeros(size(X, 2), 1);
options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = ...
	fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);