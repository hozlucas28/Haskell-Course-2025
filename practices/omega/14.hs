
-- Define a function that removes duplicates from a list.

inList :: [Int] -> Int -> Bool
inList [] _ = False
inList (head:tail) element = if head == element
    then True
    else inList tail element

setAux :: [Int] -> [Int] -> [Int]
setAux [] uniqueList = uniqueList
setAux (head:tail) uniqueList = if (inList uniqueList head)
    then setAux tail uniqueList
    else setAux tail (uniqueList++[head])

set :: [Int] -> [Int]
set list = setAux list []

main = print (set [1, 2, 3, 4, 4, 5, 3, 6])