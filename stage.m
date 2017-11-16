function [s, thetas, dthetas] = stage(s, theta, dtheta, x, dx, thetas, dthetas, tol)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    if s == 1 && abs(theta - pi/4) < tol
        s = s + 1;
    elseif s == 2 && x > 0
        s = s + 1;
        thetas(s) = theta;
        dthetas(s) = dtheta;
    elseif s == 3 && abs(theta - pi) < tol
        s = s + 1;
    end
end