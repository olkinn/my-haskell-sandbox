module Sandbox.DataStructures.TreeSpec (spec) where

import Test.Hspec
import Sandbox.DataStructures.Tree

spec :: Spec
spec = do

  describe "treeHeight" $ do

    it "Calculates the height of a tree" $ do
      let tree = Node 'P'
                     (Node 'O'
                          (Node 'L'
                               (Node 'N' EmptyTree EmptyTree)
                               (Node 'T' EmptyTree EmptyTree)
                           )
                           (Node 'Y'
                                (Node 'S' EmptyTree EmptyTree)
                                (Node 'A' EmptyTree EmptyTree)
                           )
                     )
                     (Node 'L'
                          (Node 'W'
                               (Node 'C' EmptyTree EmptyTree)
                               (Node 'R' EmptyTree EmptyTree)
                          )
                           (Node 'A'
                                (Node 'A' EmptyTree EmptyTree)
                                (Node 'C' EmptyTree EmptyTree)
                           )
                     )
      treeHeight tree `shouldBe` 4
