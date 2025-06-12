
-- Write a function that counts the number of elements in a list.

count :: [Int] -> Int
count [] = 0
count (head:tail) = 1 + count tail

main = print (count [1, 2, 3, 4, 5, 6, 11, 111, 111, 1111])