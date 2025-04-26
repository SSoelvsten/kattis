module Main (main) where

import Control.Monad

main :: IO ()
main =
  getLine >>= (\ x -> return (read x :: Int))
          >>= (\ x -> foldM (\ () y -> print y) () [1..x])
