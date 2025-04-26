module Main (main) where

getInt :: IO Int
getInt = getLine >>= (\ x -> return (read x :: Int))

main :: IO ()
main = do
  s <- getLine
  d <- getInt
  putStrLn (foldl (++) "" [s | _ <-[1..d]])
