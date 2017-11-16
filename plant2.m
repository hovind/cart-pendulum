g = 10;

N = 10000;
h = 1e-3;

height = 0.5;
width = 1;
length = 1;
config = init_animate_cart(width, height, length);


t = 0;
theta = 0.1;%pi;
dtheta = 0;
ddtheta = 0;

x = 0;
dx = 0;
ddx = 0;
table = zeros(6, N);

f = @(x, theta, ddx, ddtheta) 1;

thetas = [pi pi/4 pi/4 pi]';
dthetas = [0 0 0 0]';
xs = [-1 0 0 1]';
dxs = [0 0 0 0]';
s = 1;

% Controllers
k2 = 1;
k4 = 1;

tol = 1e-3;
%f = [

for i = 1:N,
    t = t + h;
    a = -pi;
    f = 2*a*g*sin(theta)/(1 + a*cos(theta)) - g*cos(theta)*sin(theta)/(1 + a*cos(theta)) - sin(theta)*dtheta^2;
    
    ddx = 1/(2 - cos(theta)^2)*(f + sin(theta)*dtheta^2 - g*cos(theta)*sin(theta));
    ddtheta = 1/(2 - cos(theta)^2)*(2*g*sin(theta) - cos(theta)*sin(theta)*dtheta^2 - cos(theta)*f);
    
    
    dx = dx + h*ddx;
    dtheta = dtheta + h*ddtheta;
    
    x = x + h*dx;
    theta = theta + h*dtheta;
    
    animate_cart(config, x, theta);
    table(:,i) = [t f x theta dx dtheta]';
end