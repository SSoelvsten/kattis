module Main (main) where

getInt :: IO Int
getInt = getLine >>= (return . read)

main :: IO ()
main = do
  s <- getLine
  d <- getInt
  putStrLn (foldl (++) "" [s | _ <-[1..d]])
