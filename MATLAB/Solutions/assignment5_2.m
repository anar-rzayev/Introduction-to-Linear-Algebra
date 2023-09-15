% assignment 5_2

syms x y z % Declare symbolic variables x, y, z

% Make functions f and g using the variables
f = exp(sin(x.* y.^2))+ exp(-cos(x.^2 .* y));
g = atan(z);

fxy = diff(diff(f,x),y);    % Calculate exact form of 'df/dxdy'
Vf = double(subs(fxy, {x,y}, {2, -3}));  % find the value (df/dxdy)(2, -3)

% Compute Taylor expansion of g to the 9th order term
T = taylor(g, z, 'Order', 9);

h = abs(g - T)^2;   % The squared difference

% Find the value of integration which is given in the assignment
Vg = double(int(h,[-1 1]));

% Display
fprintf('The value of f_xy(2,-3) is %f\n', Vf);
fprintf('The L2 error between g and T on [-1, 1] is %f\n', Vg);
