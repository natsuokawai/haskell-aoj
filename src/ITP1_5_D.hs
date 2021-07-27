import Data.List

isIncludeThree 0 = False
isIncludeThree n | n `mod` 10 == 3 = True
                 | otherwise = isIncludeThree (n `div` 10)

main = do
    line <-  getLine
    let n = read line :: Int
    putStrLn $ unwords $ [ show x | x <- [1..n], x `mod` 3 == 0 || isIncludeThree x ]
