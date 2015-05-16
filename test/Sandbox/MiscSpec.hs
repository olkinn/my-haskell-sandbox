module Sandbox.MiscSpec (spec) where

import Test.Hspec
import Sandbox.Misc

spec :: Spec
spec = do

  describe "matrixMaxMin" $ do

    it "Finds min max" $ do
      matrixMaxMin [
                     [ 1,  2,  3,  4,  5  ],
                     [ 9,  8,  4,  2,  5  ],
                     [ 7, 21, 17,  8,  7  ],
                     [ 9,  8,  4,  2, 21  ],
                     [ 9, 23,  4,  2,  5  ]
                   ] `shouldBe` 7

