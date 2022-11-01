% Постойте графики распределения населения по группам и общего количества 
% населения в течение 100 лет:
% Уровень рождаемости:
b = 1.24;
% Уровень смертности:
d = 10.566;
% Уровень детской смертности:
d_C = 3.23;
% Начальное распределение населения:
N1 = 4639064;
N2 = 8585124;
N3 = 30090434;
N4 = 17191097;
% Число годовых групп:
n1 = 6;
n2 = 12;
n3 = 36;
n4 = 19;
% Сколько лет:
years = 100;
[pop, population_in_year] = get_population(N1, N2, N3, N4, n1, n2, n3, n4, b, d, d_C, years);

X = 1:years;
Y = 1:years;
for i = 1:years
    Y(i) = sum(population_in_year(i,:));
end
plot(X, Y)