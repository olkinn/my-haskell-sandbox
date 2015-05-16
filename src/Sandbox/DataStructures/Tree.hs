module Sandbox.DataStructures.Tree (Tree(Node, EmptyTree),
                                    treeHeight)  where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

treeHeight :: (Tree a) -> Int 
treeHeight EmptyTree  = 0
treeHeight (Node a left right) = 1 + max (treeHeight left) (treeHeight right)