func fib(n: int): int =
    case n < 2:
    of true: n
    of false: fib(n - 1) + fib(n - 2)

for i in 0..20:
    echo fib(i)

