function res = twin_3(h)
% Задание 1. Разработайте программу (m-сценарий), позволяющую пользователю задавать с
% помощью мыши два отрезка A и B, после чего отобразите исходный отрезок A, целевой
% отрезок B и все промежуточные изображения (твины) между A и B при изменении параметра
% t от 0 до 1 с заданным шагом
clf
axis([-1 1 -1 1])
title('Enter 2 segments')
hold on

A = ginput(1);
plot(A(1), A(2), '.r', 'MarkerSize', 25)
text(A(1), A(2) + .1, 'A', 'Color', 'y', 'FontWeight', 'bold');

A(2, :) = ginput(1);
plot(A(2, 1), A(2, 2), '.b', 'MarkerSize', 25)

plot([A(1, 1), A(2, 1)], [A(1, 2), A(2, 2)], 'g')

B = ginput(1);
plot(B(1), B(2), '.r', 'MarkerSize', 25)
text(B(1), B(2) + .1, 'B', 'Color', 'y', 'FontWeight', 'bold');

B(2, :) = ginput(1);
plot(B(2, 1), B(2, 2), '.b', 'MarkerSize', 25)
plot([B(1, 1), B(2, 1)], [B(1, 2), B(2, 2)], 'g')

plot([B(1, 1), B(2, 1)], [B(1, 2), B(2, 2)], 'g')

t = 0 : h : 1;
S_1 = (1 - t) * A(1, 1) + t * B(1, 1);
S_1(2, :) = (1 - t) * A(1, 2) + t * B(1, 2);
S_2 = (1 - t) * A(2, 1) + t * B(2, 1);
S_2(2, :) = (1 - t) * A(2, 2) + t * B(2, 2);
% S - массив в две строки
for n = 1:size(S_1, 2)
    h1 = plot(S_1(1, n), S_1(2, n), '.r', 'MarkerSize', 25);
    h2 = plot(S_2(1, n), S_2(2, n), '.b', 'MarkerSize', 25);
    h3 = plot([S_1(1, n), S_2(1, n)], [S_1(2, n), S_2(2, n)], 'g', 'MarkerSize', 20);
    axis([-1 1 -1 1])
    drawnow
    pause(.03)
    if(n ~= 1) || (n ~= size(S_1, 2))
        set(h1, 'Visible', 'Off')
        set(h2, 'Visible', 'Off')
        set(h3, 'Visible', 'Off')
        clear h
    end
end
for n = size(S_1, 2):-1:1
    h1 = plot(S_1(1, n), S_1(2, n), '.r', 'MarkerSize', 25);
    h2 = plot(S_2(1, n), S_2(2, n), '.b', 'MarkerSize', 25);
    h3 = plot([S_1(1, n), S_2(1, n)], [S_1(2, n), S_2(2, n)], 'g', 'MarkerSize', 20);
    axis([-1 1 -1 1])
    drawnow
    pause(.03)
    if(n ~= 1) || (n ~= size(S_1, 2))
        set(h1, 'Visible', 'Off')
        set(h2, 'Visible', 'Off')
        set(h3, 'Visible', 'Off')
        clear h
    end
end
end

