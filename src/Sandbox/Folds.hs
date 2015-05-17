module Sandbox.Folds (sum', last', length')  where

sum' :: (Num a) => [a] -> a  
sum' xs = foldl (\acc x -> acc + x) 0 xs  

last' :: [a] -> a
last' = foldl1 (\acc x -> x) 

length' :: (Num a) => [a] -> a
length' = foldl (\acc x -> acc + 1) 0
