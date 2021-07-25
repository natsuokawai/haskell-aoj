import Data.Maybe
import qualified Data.ByteString.Char8 as BS

readInt = fst . fromJust . BS.readInt
readIntList = map readInt . BS.words
readIntListLines = map readIntList . BS.lines

printRect [h, w]
    | w == 0 = return ()
    | h == 0 = putStrLn ""
    | otherwise = do
        putStrLn $ BS.unpack $ BS.replicate w '#'
        printRect [h - 1, w]

printRectN [] = return ()
printRectN (x:xs) = do
    printRect x
    printRectN xs

main = do
    lines <- fmap readIntListLines BS.getContents
    printRectN lines
