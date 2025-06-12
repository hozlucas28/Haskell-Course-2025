
-- Define a function that determines whether a number is even or odd.

isEven :: Int -> Bool
isEven a = if even a
    then True
    else False

main = print (isEven 0)