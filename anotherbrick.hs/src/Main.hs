module Main (main) where

getIntsLine :: IO [Int]
getIntsLine = getLine >>= (return . words) >>= (return . (map read))

test_hw :: Int -> Int -> [Int] -> Bool
test_hw h w ns =
  let test_hw' h' w' ns' =
        if h' == 0 && w' == 0 then True
        else if w' == 0 then test_hw' (h'-1) w ns'
        else case ns' of
          []     -> False
          n':ns'' -> if n' > w' then False
                     else test_hw' h' (w'-n') ns''
  in test_hw' (h-1) w ns

main :: IO ()
main = do
  [h, w, _] <- getIntsLine
  ns <- getIntsLine
  putStrLn (if test_hw h w ns then "YES" else "NO")
