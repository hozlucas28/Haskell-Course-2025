
-- Given two integers `A` and `B`, implement a function that returns the integer division of both by the method of successive subtractions.

remainder :: Int -> Int -> Int
remainder a 0 = 0
remainder a b = if a >= b
    then (remainder (a - b) b) + 1
    else 0

main = print (remainder 10 3)