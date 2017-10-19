g = 10;

N = 10000;
h = 1e-3;

height = 0.5;
width = 2;
length = 2;
config = init_animate_cart(width, height, length);


t = 0;
theta = 0.1;
dtheta = 0;
ddtheta = 0;
x = 0;
dx = 0;
ddx = 0;
for i = 1:N,
    t = t + h;
    
    f = 0;
    
    ddx = (f + sin(theta)*dtheta^2 - cos(theta)*ddtheta)/2;
    ddtheta = g*sin(theta) - cos(theta)*ddx;
    
    dx = dx + h*ddx;
    dtheta = dtheta + h*ddtheta;
    
    x = x + h*dx;
    theta = theta + h*dtheta;
    
    animate_cart(config, x, theta);
    %ddx = - g*sin(x)/(1 + cos(x));
end