% assignment 3 1_(a)

t = linspace(-1,1); % t is a vector from -1 to 1 with increment 0.001
% Evaluate each value of given function.
x = t.* cos(20.* pi.* t);
y = t.* sin(20.* pi.* t);
z = tanh(t);  

figure(1); clf(1);  % Make a first blank figure window

% Control the size of the font.
set(gca, 'Fontsize', 12);

plot3(x, y, z, 'Color', 'r', 'LineWidth', 1.3);     % Plot the vectorized function in 3D space
xlabel('x'); ylabel('y'); zlabel('z'); % Indicate each label as x, y, and z.
title('The graph of the helix: x=t*cos(20\pi t), y=t*sin(2\pi t), z=tanh(t)');
grid on;    % Display grids.
