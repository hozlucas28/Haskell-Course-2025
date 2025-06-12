

-- Implement a function that gets the elements in even positions of a list.

getEvenIndexes :: [Int] -> [Int]
getEvenIndexes [] = []
getEvenIndexes (_:evenIndex:tail) = evenIndex:getEvenIndexes tail

main = print (getEvenIndexes [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])