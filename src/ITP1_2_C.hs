import Data.List
import Data.Maybe
import qualified Data.ByteString.Char8 as BS

main = do
  let readInt = fst . fromJust . BS.readInt
  let readIntList = map readInt . BS.words

  [a, b, c] <- fmap (sort . readIntList) BS.getLine
  putStrLn $ show a ++ " " ++ show b ++ " " ++ show c
