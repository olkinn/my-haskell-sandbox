module Sandbox.FoldsSpec (spec) where

import Test.Hspec
import Sandbox.Folds

spec :: Spec
spec = do

  describe "sum'" $ do

    it "Calculates the sum of the elements of a list" $ do
      sum' [3, 2, 1, 10] `shouldBe` 16
