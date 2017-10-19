function [] = animate_cart(config, x, theta)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
    
    width = config.width;
    height = config.height;
    length = config.length;
    
    halfwidth = width/2;
    halfheight = height/2;
    
    clearpoints(config.cart);
    clearpoints(config.pole);
    
    % Add cart
    addpoints(config.cart, x - halfwidth, 0);
    addpoints(config.cart, x - halfwidth, height);
    addpoints(config.cart, x + halfwidth, height);
    addpoints(config.cart, x + halfwidth, 0);
    
    % Add pole
    addpoints(config.pole, x, halfheight);
    addpoints(config.pole, x + length*sin(theta), halfheight + length*cos(theta));
    drawnow
end

