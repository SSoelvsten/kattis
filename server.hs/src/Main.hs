module Main (main) where

getIntsLine :: IO [Int]
getIntsLine = getLine >>= (return . words) >>= (return . (map read))

count_jobs :: Int -> Int -> [Int] -> Int
count_jobs _ _ []    = 0
count_jobs a t (x:xs) = if t < a+x then 0 else 1 + (count_jobs (a+x) t xs)

main :: IO ()
main = do
  [_, time_limit] <- getIntsLine
  job_times <- getIntsLine
  print (count_jobs 0 time_limit job_times)
