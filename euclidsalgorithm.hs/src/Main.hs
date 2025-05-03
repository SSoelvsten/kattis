module Main (main) where

getIntsLine :: IO [Int]
getIntsLine = getLine >>= (return . words) >>= (return . (map read))

-- NOTE: The Standard library already includes a 'gcd' function
euclid_gcd :: Int -> Int -> Int
euclid_gcd a b =
  let (a', b') = if a < b then (a, b) else (b, a)
  in if a' == 0
     then b'
     else euclid_gcd a' (b' `mod` a')

main :: IO ()
main = do
  [a, b] <- getIntsLine
  print (euclid_gcd a b)
