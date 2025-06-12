
-- Define a function `maxOfThree` that returns the maximum of its integer arguments.

_maxAux :: [Int] -> Int -> Int
_maxAux [] current = current
_maxAux (head:tail) current = if head > current
    then _maxAux tail head
    else _maxAux tail current

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c = _maxAux [a, b, c] a

main = print (maxOfThree 9 1 8)