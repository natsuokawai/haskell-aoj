import Data.Maybe
import qualified Data.ByteString.Char8 as BS

readInt = fst . fromJust . BS.readInt
readIntList = map readInt . BS.words
readIntListLines = map readIntList . BS.lines

printFrame [h, w] idx
    | w == 0 = return ()
    | idx == h = putStrLn ""
    | otherwise = do
        case idx of i | i == 0 || i == h - 1 -> putStrLn $ BS.unpack $ BS.replicate w '#'
                      | otherwise -> putStrLn $ "#" ++ BS.unpack (BS.replicate (w - 2) '.') ++ "#"
        printFrame [h, w] (idx + 1)

printFrameN [] = return ()
printFrameN (x:xs) = do
    printFrame x 0
    printFrameN xs

main = do
    lines <- fmap readIntListLines BS.getContents
    printFrameN lines
