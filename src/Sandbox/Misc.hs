module Sandbox.Misc (matrixMaxMin)  where

matrixMaxMin :: [[Int]] -> Int
matrixMaxMin matrix = maxOfMin (listValues matrix)

matrixMin :: (Ord a)=> [a] -> a
matrixMin [] = error "min called on an empty list"
matrixMin (a:as) = foldr (\x y -> if x < y then x else y) a as 

listValues :: [[Int]] -> [Int]
listValues =  map matrixMin

maxOfMin :: (Ord a) => [a] -> a
maxOfMin [] = error "called on an empty list"
maxOfMin (a:as) = foldr (\x y -> if x > y then x else y) a as

