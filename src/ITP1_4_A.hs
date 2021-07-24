import Data.Maybe
import qualified Data.ByteString.Char8 as BS
import Text.Printf

readInt = fst . fromJust . BS.readInt
readIntList = map readInt . BS.words

main = do
    [a, b] <- fmap readIntList BS.getLine
    let a' = fromIntegral a :: Double
    let b' = fromIntegral b :: Double
    printf "%d %d %f\n" (a `div` b) (a `mod` b) (a' / b')
