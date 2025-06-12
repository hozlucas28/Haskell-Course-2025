
-- Given a list of numbers, return a tuple with the minimum and maximum of that list.

minInLs :: [Int] -> Int -> Int
minInLs [] minimum = minimum
minInLs (head:tail) minimum = if head < minimum
    then minInLs tail head
    else minInLs tail minimum

maxInLs :: [Int] -> Int -> Int
maxInLs [] maximum = maximum
maxInLs (head:tail) maximum = if head > maximum
    then maxInLs tail head
    else maxInLs tail maximum

minMax :: [Int] -> (Int, Int)
minMax (head:tail) = (minInLs tail head, maxInLs tail head)

main = print (minMax [1, 2, 3, -5])