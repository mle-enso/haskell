-- file MathSpec.hs
module ProblemsSpec where

import Test.Hspec
import Problems

-- main :: IO ()
-- main = hspec $ do

spec = do
  describe "misc" $ do
    it "reads negative integer from string" $
      read "-1" `shouldBe` (-1)

    it "writes negative integer to string" $
      show (-1) `shouldBe` "-1"

  describe "lists" $ do
    it "returns the last element" $
      myLast [1,2,3] `shouldBe` 3
    it "computes the empty list length" $
      listLength []   `shouldBe` 0
    it "computes the filled list length" $
      listLength [30, (-1), 2, 0] `shouldBe` 4

  describe "algebra" $ do
    it "computes the faculty" $
      fact 6 `shouldBe` 720

  describe "the pending feature" $ do
    it "should be tested later" $
      pending
    it "should be tested later, with justification" $
      pendingWith "need to fix base64 first"

  describe "Gauß' champaign glas pings" $ do
    it "implementation 1 should compute the correct count for 3 people" $
      countGlasPings 3 `shouldBe` 3
    it "implementation 1 should compute the correct count for 13 people" $
      countGlasPings 13 `shouldBe` 78
    it "implementation 1 should compute the correct count for 3.9 people" $
      countGlasPings 3.9 `shouldBe` 3
    it "implementation 2 should compute the correct count for 3 people" $
      countGlasPings' 3 `shouldBe` 3
    it "implementation 2 should compute the correct count for 13 people" $
      countGlasPings' 13 `shouldBe` 78
    it "implementation 2 should compute the correct count for 3.9 people" $
      countGlasPings 3.9 `shouldBe` 3

