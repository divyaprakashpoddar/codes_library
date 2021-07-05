function [c, iter] = bisection(f,a,b,tol,maxiter)
    if nargin == 3
        maxiter = 100;
    end
	iter = 0;
	c = mean([a,b]);
	while abs(f(c)) > tol && iter < maxiter
		[a, b ] = rootInterval(f,a,b,c);
		c = mean([a,b]);
		iter = iter + 1;
	end
end