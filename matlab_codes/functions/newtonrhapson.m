function x = newtonrhapson(fun,J,x0,tol,maxiter)
    iter = 0;
    err = 1;
    xold = x0;
    while iter < maxiter && err > tol
        x = xold(:) - J(x0)\fun(x0);
        err = norm(xold-x)./norm(xtemp);
        xold = x;
        iter = iter + 1;
    end
end