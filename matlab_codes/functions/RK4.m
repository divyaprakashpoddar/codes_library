function [t,y] = RK4(fun,t0,tN,h,y0)
% RK4: Solves IVP using using Runge-Kutta Method
% [t,y] = RK4(fun,t0,tN,h,y0):
%   Solves the given IVP using Runge-Kutta fourth order method
%   https://en.wikipedia.org/wiki/Runge%E2%80%93Kutta_methods
%
% input: 
%   fun = An anonymous function describing y'(t) = f(t,y)
%   t0  = Initial value of t
%   y0  = Intial value of y at t0
%   tN  = Final value of y
%   h  = Step size
% output:
%   t = Values of t
%   y = Values of y calculated at all t
%
% Author: Divyaprakash
%         Mechanical Engineer
% e-mail: divyaprakash.poddar@gmail.com
% Date  : 05 July 2021

    t    = t0:h:tN;
    nt   = numel(t);
    y    = zeros(1,nt);
    y(1) = y0;
    
    for i = 1:nt-1
        k1 = fun(t(i),y(i));
        k2 = fun(t(i)+h/2, y(i)+h*k1/2);
        k3 = fun(t(i)+h/2, y(i)+h*k2/2);
        k4 = fun(t(i)+h,y(i)+h*k3);
        
        y(i+1) = y(i) + 1/6*h*(k1 + 2*k2 + 2*k3 + k4);
    end
end