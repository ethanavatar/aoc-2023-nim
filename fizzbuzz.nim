proc fizzbuzz(n: int): string {.noSideEffect.} =
    case n mod 15:
    of 0: "FizzBuzz"
    of 3, 6, 9, 12: "Fizz"
    of 5, 10: "Buzz"
    else: $n

for i in 1..100:
    echo fizzbuzz(i)

