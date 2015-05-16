module Sandbox.Misc (matrixMaxMin)  where

matrixMaxMin :: [[Int]] -> Int
matrixMaxMin matrix = maximum (listValues matrix)

matrixMin :: (Ord a)=> [a] -> a
matrixMin [] = error "min called on an empty list"
matrixMin xs = foldr1 (\x y -> if x < y then x else y) xs

listValues :: [[Int]] -> [Int]
listValues =  map matrixMin
