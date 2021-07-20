import Data.Maybe
import qualified Data.ByteString.Char8 as BS

main = do
  let readInt = fst . fromJust . BS.readInt
  let readIntList = map readInt . BS.words

  let isOrdered a b c = a < b && b < c

  [a, b, c] <- fmap readIntList BS.getLine
  putStrLn $ if isOrdered a b c
               then "Yes"
               else "No"
