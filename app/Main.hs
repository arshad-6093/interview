module Main where

import MyLib
import Data.Aeson (encode)
import qualified Data.ByteString.Lazy.Char8 as B

main :: IO ()
main = do
  let encodedPair = B.unpack $ encode ("ram", Info "Backend developer" 12)
      encodedList = B.unpack $ encode [("ram", Info "Intern" 12), ("sam", Info "Frontend developer" 14)]
      result = updateInfoList encodedPair encodedList
  putStrLn result