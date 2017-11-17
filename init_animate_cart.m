function [config] = init_animate_cart(width, height, length)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
    h = figure();
    
    bounds = [-20 20 -10 20];
    axis(bounds);
    world = animatedline();
    addpoints(world, bounds(1), 0);
    addpoints(world, bounds(2), 0);
    addpoints(world, 0, 0);
    addpoints(world, 0, bounds(3));
    
    cartline = animatedline();
    poleline = animatedline();
    ballline = animatedline();
    
    config = struct('cart', cartline, 'pole', poleline, 'ball', ballline, 'width', width, 'height', height, 'length', length);
end