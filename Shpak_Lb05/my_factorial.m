function result = my_factorial(num)
%MY_FACTORIAL calculates the factorial of a num variable
%   Calculation of the factorial performs with recurtion, slowly reducing
%  the num variable to the 1.
if (num == 0) || (num == 1)
    result = 1;
else
    result = num * factorial(num - 1);
end
end

