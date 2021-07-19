import Data.Maybe
import qualified Data.ByteString.Char8 as BS

main = do
  [n, m] <- fmap (map  (fst . fromJust . BS.readInt) . BS.words) BS.getLine
  putStrLn $ show (n * m)  ++ " " ++ show (n * 2 + m * 2)
