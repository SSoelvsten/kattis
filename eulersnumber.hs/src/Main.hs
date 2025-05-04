module Main (main) where

getInt :: IO Int
getInt = getLine >>= (return . read)

fac :: Int -> Double
fac n = product [1.0 .. (fromIntegral n :: Double)]

euler :: Int -> Double
euler n =
  let euler' acc n' = if n' == 0 then 1.0 + acc else euler' (acc + 1.0 / (fac n')) (n'-1)
  in euler' 0 n

main :: IO ()
main = getInt >>= (print . euler)
