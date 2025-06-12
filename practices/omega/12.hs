
-- Write a function that obtains the nth number of the Fibonacci sequence.

fibonacciAux :: Int -> Int -> Int -> Int
fibonacciAux prev01 prev02 3 = prev01 + prev02
fibonacciAux prev01 prev02 counter = fibonacciAux prev02 (prev01 + prev02) (counter - 1)

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci nth = fibonacciAux 1 1 nth

main = print (fibonacci 8)