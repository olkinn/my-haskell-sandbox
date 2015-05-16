module Sandbox.Misc (matrixMaxMin)  where

matrixMaxMin :: [[Int]] -> Int
matrixMaxMin matrix = max (listValues matrix)

matrixMin :: (Ord a)=> [a] -> a
matrixMin [] = error "min called on an empty list"
matrixMin  = foldr1 (\x y -> if x < y then x else y)

listValues :: [[Int]] -> [Int]
listValues =  map matrixMin
