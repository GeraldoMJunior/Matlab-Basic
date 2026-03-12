b = 0.5;
l = 0.8;
h = sqrt(l^2 - (b/2)^2);

xcg = 0;
ycg = 0;
x = [-b/2+xcg b/2+xcg xcg -b/2+xcg];
y = [-h/3+ycg -h/3+ycg 2*h/3+ycg -h/3+ycg];

figure;
plot(x, y, 'r-', 'LineWidth', 2);
hold on;
fill(x, y, 'r', 'FaceAlpha', 0.3);
xlim([-5 5]);
ylim([-5 5]);
axis equal;
xlim([-5 5]);
ylim([-5 5]);
grid on;
title('Triângulo Isósceles (Lados = 3, Base = 2)');
xlabel('Eixo X (cm)');
ylabel('Eixo Y (cm)');
hold off;