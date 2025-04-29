module Main (main) where

getInt :: IO Int
getInt = getLine >>= (return . read)

main :: IO ()
main = do
  a <- getInt
  b <- getInt
  putStrLn (if a < b then "FAKE NEWS!"
            else if b < a then "MAGA!"
            else "WORLD WAR 3!")
