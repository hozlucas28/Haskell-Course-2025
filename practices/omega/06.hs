
-- Define a function that determines whether a list is sorted in ascending order.

isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [_] = True
isAsc (head01:head02:tail) = if head01 <= head02
    then isAsc (head02:tail)
    else False

main = print (isAsc [0, 0, 4, 5, 5])