function [t,y] = euler_ivp(fun,tspan,y0,dt)
% euler_ivp: Solves IVP using Euler's method
% [t,y] = euler_ivp(fun,t0,y0,tN,dt):
%   Solves the given IVP using Euler's Method
%
% input: 
%   fun = An anonymous function describing y'(t) = f(t,y)
%   t0  = Initial value of t
%   y0  = Intial value of y at t0
%   tN  = Final value of y
%   dt  = Step size
% output:
%   t = Values of t
%   y = Values of y calculated at all t
%
% Author: Divyaprakash
%         Mechanical Engineer
% e-mail: divyaprakash.poddar@gmail.com
% Date  : 05 July 2021

    t           = tspan(1):dt:tspan(2);
    nt          = numel(t);
    y           = zeros(numel(y0),nt);
    y(:,1)      = y0;
    
    for i = 1:nt-1
        y(:,i+1) = y(:,i) + fun(t(i),y(:,i))*dt;
    end
end