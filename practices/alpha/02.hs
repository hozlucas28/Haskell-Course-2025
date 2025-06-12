
-- Write a function to find the power of a number.

_pow :: Int -> Int -> Int
_pow 0 b = 0
_pow a 0 = 1
_pow a b = if b > 1
    then a * _pow a (b - 1)
    else a

main = print (_pow 2 6)