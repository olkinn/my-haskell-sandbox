module Sandbox.Folds (sum', last', length', map', filter', reverse', elem', take')  where

import Data.Char
import Data.List

sum' :: (Num a) => [a] -> a  
sum' xs = foldl (\acc x -> acc + x) 0 xs  

last' :: [a] -> a
last' = foldl1 (\acc x -> x) 

length' :: (Num a) => [a] -> a
length' = foldl (\acc x -> acc + 1) 0

map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x acc -> f x : acc) [] 

filter' :: (a -> Bool) -> [a] -> [a]
filter' f = foldr (\x acc -> if (f x == True) then x : acc else acc) []

reverse' :: [a] -> [a]
reverse' = foldl (\x acc -> acc : x) []

elem' :: (Eq a) => a -> [a] -> Bool 
elem' a = foldl (\acc x -> if (x == a) then (acc == True) else acc) False


step :: ([a], Int) -> a -> ([a], Int)
step (arr, 0) curr = (arr, 0)
step (arr, n) curr = (arr ++ [curr], n-1) 

take' :: Int -> [a] -> [a]
take' n arr = fst (foldl step ([],n) arr)
