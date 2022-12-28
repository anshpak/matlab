function res = twin_5(h)
% Задание 5. Напишите программу (m-сценарий), в которой пользователь при помощи мыши
% интерактивно задает три точки A, B, C, затем выполняется квадратичная интерполяция и
% движение точки по кривой от точки A до точки C.
clf
axis([-1 1 -1 1])
title('Enter 3 points')
hold on

A = ginput(1);
plot(A(1), A(2), '.b', 'MarkerSize', 25)
text(A(1), A(2) + .1, 'A', 'Color', 'y', 'FontWeight', 'bold');

B = ginput(1);
plot(B(1), B(2), '.r', 'MarkerSize', 25)
text(B(1), B(2) + .1, 'B', 'Color', 'y', 'FontWeight', 'bold');

C = ginput(1);
plot(C(1), C(2), '.m', 'MarkerSize', 25)
text(C(1), C(2) + .1, 'C', 'Color', 'y', 'FontWeight', 'bold');

plot([A(1), B(1), C(1)], [A(2), B(2), C(2)], 'g')

t = 0 : h : 1;
S = (1 - t).^2 .* A(1) + 2 .* (1 - t) .* t .* B(1) + t.^2 .* C(1);
S(2, :) = (1 - t).^2 .* A(2) + 2 .* (1 - t) .* t .* B(2) + t.^2 .* C(2);
plot(S(1, :), S(2, :), 'g', 'MarkerSize', 25)
% S - массив в две строки
for n = 1:size(S, 2)
    h = plot(S(1, n), S(2, n), '.g', 'MarkerSize', 25);
    axis([-1 1 -1 1])
    drawnow
    pause(.03)
    if(n ~= 1) || (n ~= size(S, 2))
        set(h, 'Visible', 'Off')
        clear h
    end
end

end

