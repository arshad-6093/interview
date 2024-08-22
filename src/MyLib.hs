{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyClass #-}

module MyLib where

import Data.List (find, delete)
import Data.Aeson (encode, decode, FromJSON, ToJSON)
import GHC.Generics (Generic)
import qualified Data.ByteString.Lazy.Char8 as B

-- You are given an encoded string representing a key-value pair, where the key is a name, and the value is an instance of a data type Info containing two fields:
-- role (a string representing the role of the person in the company) and employerId (an integer representing the employer ID).
-- Additionally, you are provided with an encoded list of such key-value pairs.

-- Your task is to implement a Haskell function that:

-- 1.Decodes the input string to extract the key and value.
-- 2.Decodes the list of key-value pairs.
-- 3.Checks if the key from the input string already exists in the list:
--   i) If the key exists, the function should update the role field by appending the new role to the existing role(s), separated by a comma, ensuring the employerId remains the same.
--   ii) If the key does not exist, the function should add the new key-value pair to the list.
-- 4.The function should then re-encode the updated list back to a string and return it.

-- Expected Outputs
--   Input: ("ram", Info "Backend developer" 12)
--   List: [("ram", Info "Intern" 12), ("sam", Info "Frontend developer" 14)]
--   Output: [("ram", Info "Intern, Backend developer" 12), ("sam", Info "Frontend developer" 14)]

--   Input: ("john", Info "Data Scientist" 18)
--   List: [("ram", Info "Intern" 12), ("sam", Info "Frontend developer" 14)]
--   Output: [("ram", Info "Intern" 12), ("sam", Info "Frontend developer" 14), ("john", Info "Data Scientist" 18)]

data Info = Info { role :: String, employerId :: Int } deriving (Show, Eq, Generic, FromJSON, ToJSON)

updateInfoList :: String -> String -> String
updateInfoList encodedPair encodedList = undefined