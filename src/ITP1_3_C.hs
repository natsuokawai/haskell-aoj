import Data.List
import Data.Maybe
import qualified Data.ByteString.Char8 as BS

readInt = fst . fromJust . BS.readInt
readIntList = map readInt . BS.words
readIntListLines = map readIntList . BS.lines

swapAllPair [_] = return ()
swapAllPair (x:xs) = do
    let [a, b] = sort x
    putStrLn $ show a ++ " " ++ show b
    swapAllPair xs

main = do
    intPairList <- fmap readIntListLines BS.getContents
    swapAllPair intPairList
