function res = twin_4(n, h)
% Задание 1. Разработайте программу (m-сценарий), позволяющую пользователю задавать с
% помощью мыши два отрезка A и B, после чего отобразите исходный отрезок A, целевой
% отрезок B и все промежуточные изображения (твины) между A и B при изменении параметра
% t от 0 до 1 с заданным шагом
clf
axis([-1 1 -1 1])
title('Enter n segments')
hold on
points = ginput(1);
text(points(1, 1), points(1, 2) + .1, 'A', 'Color', 'y', 'FontWeight', 'bold');
plot(points(1, 1), points(1, 2), '.b', 'MarkerSize', 25)
for i = 2:n
    i
    points(i, :) = ginput(1);
    plot(points(i, 1), points(i, 2), '.b', 'MarkerSize', 25)
end


end

