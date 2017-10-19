g = 10;

N = 10000;
h = 1e-3;

height = 0.5;
width = 2;
length = 2;
config = init_animate_cart(width, height, length);


t = 0;
theta = pi+0.01;
dtheta = 0;
ddtheta = 0;

x = -pi;
dx = 0;
ddx = 0;

for i = 1:N,
    t = t + h;
    
    f = - 2*g*sin(theta)/(1 + cos(theta)) + cos(theta)*ddtheta - sin(theta)*dtheta^2; 
    
    %ddx = (f + sin(theta)*dtheta^2 - cos(theta)*ddtheta)/2;
    %ddtheta = g*sin(theta) - cos(theta)*ddx;
    ddx = 1/(2 - cos(theta)^2)*(f + sin(theta)*dtheta^2 - g*cos(theta)*sin(theta));
    ddtheta = 1/(2 - cos(theta)^2)*(2*g*sin(theta) - cos(theta)*sin(theta)*dtheta^2 - cos(theta)*f);
    
    
    dx = dx + h*ddx;
    dtheta = dtheta + h*ddtheta;
    
    x = x + h*dx;
    theta = theta + h*dtheta;
    
    animate_cart(config, x, theta);
end