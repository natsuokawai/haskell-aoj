import Data.List
import Data.Maybe
import qualified Data.ByteString.Char8 as BS
import qualified Data.ByteString.Lazy.Char8 as BSL

readInt = fst . fromJust . BS.readInt
readIntList = map readInt . BS.words
readIntListLines = map readIntList . BS.lines

printChess [h, w] = unlines $ take h $ map (take w) $ tails $ cycle "#."

printChessN [] = return ()
printChessN (x:xs) = do
    putStrLn $ printChess x
    printChessN xs

main = do
    lines <- fmap readIntListLines BS.getContents
    printChessN lines
