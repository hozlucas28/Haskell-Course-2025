
-- Implement a function that checks if a text string is a palindrome.

removeSpaces :: String -> String -> String
removeSpaces "" withoutSpaces = withoutSpaces
removeSpaces (head:tail) withoutSpaces = if head == ' '
    then removeSpaces tail withoutSpaces
    else removeSpaces tail (withoutSpaces++(head:""))

toReverse :: String -> [Char] -> [Char]
toReverse "" reversed = reversed
toReverse (head:tail) reversed = toReverse tail (head:reversed)

isPalindromeAux :: String -> [Char] -> Bool
isPalindromeAux "" [] = True
isPalindromeAux "" (_:_) = False
isPalindromeAux (_:_) [] = False
isPalindromeAux (strHead:strTail) (reversedStrHead:reversedStrTail) = if strHead == reversedStrHead
    then isPalindromeAux strTail reversedStrTail
    else False

isPalindrome :: String -> Bool
isPalindrome "" = True
isPalindrome str = isPalindromeAux (removeSpaces str "") (toReverse (removeSpaces str "") [])

main = print (isPalindrome "dabale arroz a la zorra el abad")