function result = my_fib(n)
%MY_Fib calculates the succession of the Fibonacci
%   Calculate the succession of the Fibonacci using recursion
if (n == 0) || (n == 1)
    result = 1;
else
    result = my_fib(n - 1) + my_fib(n - 2);
end
end