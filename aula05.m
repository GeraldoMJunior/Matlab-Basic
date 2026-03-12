b = 0.5;
l = 0.8;
h = sqrt(l^2 - (b/2)^2);
xcg = 0;
ycg = 0;

x_base = [-b/2, b/2, 0, -b/2];
y_base = [-h/3, -h/3, 2*h/3, -h/3];

figure;
hold on;
axis equal;

xlim([-1 1]); 
ylim([-1 1]);
grid on;
xlabel('Eixo X (cm)');
ylabel('Eixo Y (cm)');

p = plot(x_base, y_base, 'r-', 'LineWidth', 2);
f = fill(x_base, y_base, 'r', 'FaceAlpha', 0.3);

for ang_graus = 0:2:360 
    
    ang_rad = deg2rad(ang_graus);
    
    x_rot = x_base * cos(ang_rad) - y_base * sin(ang_rad);
    y_rot = x_base * sin(ang_rad) + y_base * cos(ang_rad);
    
    x = x_rot + xcg;
    y = y_rot + ycg;
    
    set(p, 'XData', x, 'YData', y);
    set(f, 'XData', x, 'YData', y);
    
    title(sprintf('Triângulo Rotacionado em %d°', ang_graus));
    drawnow; 
    
    % pause(0.01); 
end
hold off;