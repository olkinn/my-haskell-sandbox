module Sandbox.FoldsSpec (spec) where

import Test.Hspec
import Sandbox.Folds

spec :: Spec
spec = do

  describe "sum'" $ do

    it "Calculates the sum of the elements of a list" $ do
      sum' [3, 2, 1, 10] `shouldBe` 16

  describe "last'" $ do

	it "returns the last element of a list" $ do
		last' [4,5,3,8] `shouldBe` 8
