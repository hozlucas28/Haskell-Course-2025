
-- Implement a function that reverses a list.

_reverseAux :: [Int] -> [Int] -> [Int]
_reverseAux [] b = b
_reverseAux (head:tail) b = _reverseAux tail (head:b)

_reverse :: [Int] -> [Int]
_reverse [] = []
_reverse a = _reverseAux a []

main = print (_reverse [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])