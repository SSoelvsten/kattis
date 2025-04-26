module Main (main) where

-- TODO: Switch to IO(Int) and use >> ?
telja :: Int -> IO ()
telja x = do
  if x > 1 then telja (x-1) else return ()
  print x

-- TODO: Again, try to use >>=
main :: IO ()
main = do
  x_string <- getLine
  let x_int = read x_string :: Int
  telja x_int
