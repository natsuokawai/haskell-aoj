import Data.List
import Data.Maybe
import qualified Data.ByteString.Char8 as BS

readInt = fst . fromJust . BS.readInt
readIntList = map readInt . BS.words

main = do
    [a, b, c] <- fmap readIntList BS.getLine
    print $ length [ x | x <- [a..b], c `mod` x == 0 ]
