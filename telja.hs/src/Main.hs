module Main (main) where

main :: IO ()
main =
  getLine >>= (\ x  -> return [1..(read x :: Int)])
          >>= (sequence_ . (map print))
