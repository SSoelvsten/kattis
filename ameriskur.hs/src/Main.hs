module Main (main) where

import Text.Printf

getDouble :: IO Double
getDouble = getLine >>= (return . read)

main :: IO ()
main = getDouble >>= ((printf "%.11f\n") . (* 0.09144))
