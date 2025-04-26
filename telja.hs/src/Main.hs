module Main (main) where

main :: IO ()
main =
  getLine >>= (\ x  -> return [1..(read x :: Int)])
          >>= (\ xs -> sequence_ (map print xs))
