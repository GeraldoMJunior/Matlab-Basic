clearvars;
clf;

p1 = [1, 2];
p2 = [9, 8];
m = (p2(2) - p1(2)) / (p2(1) - p1(1));
c = p1(2) - m * p1(1);

x = 1:0.1:9;
y = m*x + c;

hold on;
plot(x, y, 'o', 'Color', 'b', 'MarkerSize', 3);
plot([p1(1) p2(1)], [p1(2) p2(2)], 'ro', 'MarkerSize', 6, 'MarkerFaceColor','r');
grid on;
axis([0 10 0 10]);
title(['Line: y = ' num2str(m) 'x + ' num2str(c)]);
hold off;