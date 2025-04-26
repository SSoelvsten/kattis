module Main (main) where

import Text.Printf

getDouble :: IO Double
getDouble = getLine >>= (\ x -> return (read x :: Double))

main :: IO ()
main = getDouble >>= ((printf "%.11f\n") . (* 0.09144))
