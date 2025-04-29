module Main (main) where

import Control.Monad
import Data.Function
import qualified Data.List as List

vowels :: Bool -> [Char]
vowels y = (if y then ['y', 'Y'] else []) ++ ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

count :: (a -> Bool) -> [a] -> Int
count f xs = map (fromEnum . f) xs & sum

main :: IO ()
main = do
  s <- getLine
  let bools = map (== 1) ([0..1] :: [Int])
  let preds = map (\ y -> (\ x -> any (== x) (vowels y))) bools
  let out   = map (\ f -> count f s) preds
  putStrLn  $ (map show out) & (List.intersperse " ") & join
