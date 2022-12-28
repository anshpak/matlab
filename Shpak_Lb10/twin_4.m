function res = twin_4(n, h)
% Задание 1. Разработайте программу (m-сценарий), позволяющую пользователю задавать с
% помощью мыши два отрезка A и B, после чего отобразите исходный отрезок A, целевой
% отрезок B и все промежуточные изображения (твины) между A и B при изменении параметра
% t от 0 до 1 с заданным шагом
clf
axis([-1 1 -1 1])
title('Enter n segments')
hold on
points_A = ginput(1);
text(points_A(1, 1), points_A(1, 2) + .1, 'A', 'Color', 'y', 'FontWeight', 'bold');
plot(points_A(1, 1), points_A(1, 2), '.b', 'MarkerSize', 25)
for i = 2:n
    points_A(i, :) = ginput(1);
    plot(points_A(i, 1), points_A(i, 2), '.b', 'MarkerSize', 25)
end

points_A(n + 1, :) = points_A(1, :);

plot(points_A(:, 1), points_A(:, 2), 'g')

points_B = ginput(1);
plot(points_B(1, 1), points_B(1, 2), '.r', 'MarkerSize', 25)
text(points_B(1), points_B(2) + .1, 'B', 'Color', 'y', 'FontWeight', 'bold');

for i = 2:n
    points_B(i, :) = ginput(1);
    plot(points_B(i, 1), points_B(i, 2), '.r', 'MarkerSize', 25)
end

points_B(n + 1, :) = points_B(1, :);

plot(points_B(:, 1), points_B(:, 2), 'g')

t = 0 : h : 1;

for i = 1:n
    S_x = (1 - t) .* points_A(:, 1) + t .* points_B(:, 1);
    S_y = (1 - t) .* points_A(:, 2) + t .* points_B(:, 2);
end

for i = 1:size(S_x, 2)
    h1 = plot(S_x(:, i), S_y(:, i), '.b', 'MarkerSize', 25);
    h2 = plot(S_x(:, i), S_y(:, i), 'g', 'MarkerSize', 20);
    axis([-1 1 -1 1])
    drawnow
    pause(.03)
    if(n ~= 1) || (n ~= size(S_1, 2))
        set(h1, 'Visible', 'Off')
        set(h2, 'Visible', 'Off')
        clear h
    end
end

end

