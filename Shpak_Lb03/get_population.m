function res = get_population(N1, N2, N3, N4, n1, n2, n3, n4, b, d, d_C, years)
    pop = [N1 N2 N3 N4];
    % Уровень взрослой смертности:
    d_A = d - d_C;
    % Вектор коэффициентов для подсчета смертности:
    death_koef = [d_C / 100, 0, 0, d_A / 100];
    % Вектор коэффициентов для подсчета покидающих диапазон:
    leave_koef = [(1 - d_C / 100) / n1, 1 / n2, 1 / n3, (1 - d_A / 100) / n4];
    % Вектор коэффициентов для подсчета прибывающих в диапазон:
    arrive_koef = [b / 100, (1 - d_C / 100) / n1, 1 / n2, 1 / n3];
    for tmp = 1:years
        pop_for_arr = [pop(3), pop(1), pop(2), pop(3)];
        pop = round(pop + pop_for_arr .* arrive_koef - pop .* leave_koef - pop .* death_koef);
    end
    res = pop;
end