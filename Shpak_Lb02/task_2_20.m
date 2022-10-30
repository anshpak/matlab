% Задание 2.20
% Последовательно введите команды, выполняющие арифметические 
% действия над матрицами, и изучите результаты их выполнения
A = [1; 2; 3; 4; 5; 6]
% Комплексно-сопряженное транспонирование
B = A';
% Транспонирование
C = A.';
% Ошибка
D = -A;
% Сложение матрицы А с матрицей D, умноженной на 2
B = A + 2*D;
% Сумма квадратов матрицы A
C = A' * A;
a = [1:4];
% Новая квадратная матрица 4 x 4
E = a' * a;
% Сумма квадратов матрицы a
f = a * a';
% Матрица, полученная путем деления всех элементов матрицы A на 2
d = A / 2;
% A * A - неправильное умножение матриц
% G = A^2
% Поэлементное возведение матрицы A в квадрат
B = A.^2;
% Поэлементное возведение матрицы A в сами значения матрицы A
B = A.^A
% Поэлементное произведение матрицы A * A
C = A.*A 
% Диагональная матрица из диагонали матрицы A
b = diag(A)
