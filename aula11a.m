clearvars;
clf;

hold on;

xp = [1 2 3 4 6 9];
yp = [3 7 8 4 1 5];

for f = 1:length(xp)-1
  p1 = [xp(f), yp(f)];
  p2 = [xp(f+1), yp(f+1)];
  m = (p2(2) - p1(2)) / (p2(1) - p1(1));
  c = p1(2) - m * p1(1);

  x = p1(1):0.1:p2(1);
  y=  m*x + c;

  plot(x, y, 'o', 'Color', [0.5 0.5 0.5],'MarkerSize', 3);
  plot([p1(1) p2(1)], [p1(2) p2(2)], 'ro', 'MarkerSize', 6, 'MarkerFaceColor','r');
end

grid on;
axis([0 10 0 10]);
title(['Line: y = ' num2str(m) 'x + ' num2str(c)]);
hold off;