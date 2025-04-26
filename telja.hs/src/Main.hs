module Main (main) where

main :: IO ()
main =
  getLine >>= (\ x -> return (read x :: Int))
          >>= (\ x -> foldl (\ io y -> io >> print y) (return ()) [1..x])
