import Data.Maybe
import qualified Data.ByteString.Char8 as BS

readInt = fst . fromJust . BS.readInt
readIntList = map readInt . BS.words

main = do
    n <- fmap readInt BS.getLine
    a <- fmap readIntList BS.getLine

    putStrLn $ show (minimum a) ++ " " ++ show (maximum a) ++ " " ++ show (sum a)
