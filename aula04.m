b = 0.5;
l = 0.8;
h = sqrt(l^2 - (b/2)^2);
xcg = 0;
ycg = 0;

ang_graus = 45;
ang_rad = deg2rad(ang_graus);

x_base = [-b/2, b/2, 0, -b/2];
y_base = [-h/3, -h/3, 2*h/3, -h/3];

x_rot = x_base * cos(ang_rad) - y_base * sin(ang_rad);
y_rot = x_base * sin(ang_rad) + y_base * cos(ang_rad);

x = x_rot + xcg;
y = y_rot + ycg;

figure;
plot(x, y, 'r-', 'LineWidth', 2);
hold on;
fill(x, y, 'r', 'FaceAlpha', 0.3);

axis equal;
xlim([-5 5]);
ylim([-5 5]);
grid on;

title(sprintf('Triângulo Rotacionado em %d°', ang_graus));
xlabel('Eixo X (cm)');
ylabel('Eixo Y (cm)');
hold off;