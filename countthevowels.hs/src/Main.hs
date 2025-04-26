module Main (main) where

import Data.Function

exists :: (a -> Bool) -> [a] -> Bool
exists _ []     = False
exists f (x:xs) = if f x then True else exists f xs

isVowel :: Char -> Bool
isVowel c = -- Why 'y' is not a vowel is still a mystery...
  exists (== c) ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

count :: (a -> Bool) -> [a] -> Int
count f xs = map (fromEnum . f) xs & sum

main :: IO ()
main = do
  s <- getLine
  print (count isVowel s)
