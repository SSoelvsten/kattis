module Main (main) where

getIntsLine :: IO [Int]
getIntsLine = getLine >>= (return . words) >>= (return . (map read))

-- NOTE: The Standard library already includes a 'gcd' function
euclid_gcd :: Int -> Int -> Int
euclid_gcd a b =
  if a == b then a
  else let (a', b') = if a < b then (a, b) else (b, a)
        in euclid_gcd a' (b' - a')

main :: IO ()
main = do
  [a, b] <- getIntsLine
  print (euclid_gcd a b)
