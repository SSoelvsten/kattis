module Main (main) where

main :: IO ()
main = do
  a_str  <- getLine
  let a = read a_str :: Int
  b_str <- getLine
  let b = read b_str :: Int
  putStrLn (if a < b then "FAKE NEWS!"
            else if b < a then "MAGA!"
            else "WORLD WAR 3!")
