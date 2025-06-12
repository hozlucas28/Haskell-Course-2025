
-- Implement a function that calculates the area of ​​a circle given its radius.

radius :: Floating a => a -> a
radius a = pi * (a * a)

main = print (radius 2)