module Main (main) where

import Data.Function

isVowel :: Char -> Bool
isVowel c = -- Why 'y' is not a vowel is still a mystery...
  any (== c) ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

count :: (a -> Bool) -> [a] -> Int
count f xs = map (fromEnum . f) xs & sum

main :: IO ()
main = do
  s <- getLine
  print (count isVowel s)
