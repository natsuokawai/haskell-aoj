import Data.Maybe
import qualified Data.ByteString.Char8 as BS

main = do
  let readInt = fst . fromJust . BS.readInt
  let readIntList = map readInt . BS.words

  let condStr a b | a < b = "<"
               | a > b = ">"
               | otherwise = "=="

  [a, b] <- fmap readIntList BS.getLine
  putStrLn $ "a " ++ condStr a b ++ " b"
