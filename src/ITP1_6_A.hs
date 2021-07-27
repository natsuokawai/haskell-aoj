import Data.List
import Data.Maybe
import qualified Data.ByteString.Char8 as BS

readInt = fst . fromJust . BS.readInt
readIntList = map readInt . BS.words

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

main = do
    n <- fmap readInt BS.getLine
    nums <- fmap (take n . BS.words) BS.getLine
    putStrLn $ BS.unpack $ BS.unwords $ (reverse' nums)
