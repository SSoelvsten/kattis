module Main (main) where

telja :: Int -> IO ()
telja x =
 (if x > 1 then telja (x-1) else return ()) >> (print x)

main :: IO ()
main =
  getLine >>= (\ x -> telja (read x :: Int))
