% Задание 2.36
% Игра "Жизнь"

M = 101;
the_world = zeros(M + 1, M + 1);
for i = 2:M
    for j = 2:M
        if rand(1) < 0.1;
            the_world(i, j) = 1;
        end
    end
end

for year = 1:100
    for i = 2:(M)
        for j = 2:(M)
            count = 0;
            if (the_world(i, j + 1) == 1)
                count = count + 1;
            end
            if (the_world(i + 1, j) == 1)
                count = count + 1;
            end
            if (the_world(i, j - 1) == 1)
                count = count + 1;
            end
            if (the_world(i - 1, j) == 1)
                count = count + 1;
            end
            if ((the_world(i, j) == 1) && (count < 2))
                the_world(i, j) = 0;
            end
            if ((the_world(i, j) == 0) && (count > 3))
                the_world(i, j) = 0;
            end
            if ((the_world(i, j) == 0) && (count == 3))
                the_world(i, j) = 1;
            end
        end
        spy(the_world)
        drawnow
    end
end