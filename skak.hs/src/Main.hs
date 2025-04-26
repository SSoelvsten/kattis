module Main (main) where

import Data.Function

getIntsLine :: IO [Int]
getIntsLine = getLine >>= (return . words) >>= (return . (map read))

main :: IO ()
main = do
  gardar <- getIntsLine
  petra  <- getIntsLine
  print $ (zip gardar petra) & (map (\ (x,y) -> fromEnum (x /= y))) & sum
