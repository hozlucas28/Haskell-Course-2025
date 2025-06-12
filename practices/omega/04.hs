
-- Write a function that calculates the factorial of a number.

factorial :: Int -> Int
factorial a = if a > 1
    then a * factorial (a - 1)
    else a

main = print (factorial 6)