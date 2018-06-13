serveStubbedApi :: String -> Int -> IO Server
stopServer :: Server -> IO ()

withStubbedApi :: IO () -> IO ()
withStubbedApi action =
  bracket (serveStubbedApi "localhost" 80)
          stopServer
          (const action)

main :: IO ()
main = hspec $ around_ withStubbedApi $ do
  describe "api client" $ do
    it "should authenticate" $ do
      c <- newClient (Just ("user", "pass"))
      get c "/api/auth" `shouldReturn` status200

    it "should allow anonymous access" $ do
      c <- newClient Nothing
      get c "/api/dogs" `shouldReturn` status200

