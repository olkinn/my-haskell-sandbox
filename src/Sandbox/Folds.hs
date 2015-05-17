module Sandbox.Folds (sum', last', length', map')  where

import Data.Char

sum' :: (Num a) => [a] -> a  
sum' xs = foldl (\acc x -> acc + x) 0 xs  

last' :: [a] -> a
last' = foldl1 (\acc x -> x) 

length' :: (Num a) => [a] -> a
length' = foldl (\acc x -> acc + 1) 0

map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x acc -> f x : acc) [] 
