
-- Implement a function that gets the product of all the elements in a list.

productOfListAux :: [Int] -> Int -> Int
productOfListAux [] accumulator = accumulator
productOfListAux (head:tail) accumulator = productOfListAux tail (head * accumulator)

productOfList :: [Int] -> Int
productOfList [] = 0
productOfList list = productOfListAux list 1

main = print (productOfList [1, 5, 7, 8, 8, 10])