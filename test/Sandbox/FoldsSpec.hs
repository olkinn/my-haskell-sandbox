module Sandbox.FoldsSpec (spec) where

import Test.Hspec
import Sandbox.Folds
import Data.Char

spec :: Spec
spec = do

  describe "sum'" $ do

    it "Calculates the sum of the elements of a list" $ do
      sum' [3, 2, 1, 10] `shouldBe` 16

  describe "last'" $ do

	it "Returns the last element of a list" $ do
		last' [4,5,3,8] `shouldBe` 8

  describe "length'" $ do

  	it "Returns the length of a list" $ do
  		length' [1,2,3,4] `shouldBe` 4

  describe "map'" $ do

  	it "Applies a function to every element of the list" $ do
  		map' toUpper "hello world" `shouldBe` "HELLO WORLD"

  describe "filter'" $ do

  	it "Returns a list of elements that satisfy the function" $ do
  		filter' isUpper "HellO WorlD" `shouldBe` "HOWD"

  describe "reverse'" $ do

  	it "Returns a list of elements in reversed order" $ do
  		reverse' [1,2,3,4,5] `shouldBe` [5,4,3,2,1]

  describe "elem'" $ do

  	it "Returns True if the element in contained in the 2nd argument and False otherwise" $ do
  		elem' 'a' "Hello World" `shouldBe` False

  describe "take'" $ do

  	it "Returns the n first elements of a list" $ do
  		take' 4 "Hello World" `shouldBe` "Hell"
