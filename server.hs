module Main where

import Happstack.Server 

conf = Conf { port = 8080,
              timeout = 10,
              validator  = Nothing,
              logAccess = Just logMAccess,
              threadGroup = Nothing
}

main :: IO ()
main = simpleHTTP nullConf $ ok "Hello, World!"

