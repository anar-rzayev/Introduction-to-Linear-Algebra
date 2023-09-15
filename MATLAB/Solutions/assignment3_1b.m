% assignment 3 1_(b)

% create a equally-spaced vector x from -2 to 2 with increment 0.1.
x = linspace(-2,2);
% create a equally-spaced vector y from -2 to 2 with increment 0.1.
y = linspace(-2,2);

% To create a grid as two matrices X and Y, each of size 41*41,
% and write the xy-coordinates of each point in these matrices.
[X, Y] = meshgrid(x,y);         % Create a grid over he specified domain
Z = x.* exp(-X.^2-Y.^2);    % Evaluate z with the given function.

figure(2); clf(2)           % Make a second blank figure window
set(gca, 'Fontsize', 12);   % Visual setting

surf(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z'); % Indicate each label as x,y, and z
title('The surface of the function : z = x*exp(-x^2 - y^2)');
grid on             % Display grids
