module Main (main) where

getInt :: IO Int
getInt = getLine >>= (\ x -> return (read x :: Int))

main :: IO ()
main = do
  a <- getInt
  b <- getInt
  putStrLn (if a < b then "FAKE NEWS!"
            else if b < a then "MAGA!"
            else "WORLD WAR 3!")
