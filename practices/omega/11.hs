
-- Define a function that finds the minimum element in a list.

minInListAux :: [Int] -> Int -> Int
minInListAux [] minimum = minimum
minInListAux (head:tail) minimum = if head < minimum
    then minInListAux tail head
    else minInListAux tail minimum

minInList :: [Int] -> Int
minInList (head:tail) = minInListAux (head:tail) head

main = print (minInList [0, 2, -2, 3, 74, 5, -1, 9])