
-- Define a function that returns the smaller of its two integer arguments.

minor :: Int -> Int -> Int
minor a b = if a > b
    then b
    else a

main = print (minor 1 2)