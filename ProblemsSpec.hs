-- file MathSpec.hs
module ProblemsSpec where

import Test.Hspec
import Problems

main :: IO ()
main = hspec $ do
  describe "misc" $ do
    it "reads negative integer from string" $
      read "-1" `shouldBe` (-1)

    it "writes negative integer to string" $
      show (-1) `shouldBe` "-1"

  describe "lists" $ do
    it "returns the last element" $
      myLast [1,2,3] `shouldBe`3

