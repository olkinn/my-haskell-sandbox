module Sandbox.Folds (sum', last')  where

sum' :: (Num a) => [a] -> a  
sum' xs = foldl (\acc x -> acc + x) 0 xs  

last' :: [a] -> a
last' = foldl1 (\acc x -> x) 