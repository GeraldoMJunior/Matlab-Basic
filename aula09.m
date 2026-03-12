figure;
x = [1 2 5 6 9];
y = [1 9 6 3 8];
hold on;
plot(x, y,':', 'Color', 'b');
plot(x, y,'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
grid on;
axis([0 10 0 10]);
title('Plot');