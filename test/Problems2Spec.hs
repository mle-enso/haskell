-- file MathSpec.hs
module Problems2Spec where

import Test.Hspec
import Problems

main :: IO ()
main = hspec spec

spec = do
  describe "lists 2" $ do
    it "returns the last element" $
      myLast [1,2,4] `shouldBe` 4

