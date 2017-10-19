function [config] = init_animate_cart(width, height, length)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
    h = figure();
    axis([-5, 5, 0, 5]);
    
    cartline = animatedline();
    poleline = animatedline();
    ballline = animatedline();
    config = struct('cart', cartline, 'pole', poleline, 'ball', ballline, 'width', width, 'height', height, 'length', length);
end