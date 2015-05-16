module Sandbox.RecursionSpec (spec) where

import Test.Hspec
import Sandbox.Recursion

spec :: Spec
spec = do

  describe "length'" $ do

    it "Calculates the length of a list" $ do
      length' [1, 2, 7, 4, 34] `shouldBe` 5

    it "Calculates the length of a string" $ do
      length' "Olya Piatrova" `shouldBe` 7
