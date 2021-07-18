import Data.Maybe
import qualified Data.ByteString.Char8 as BS 

main :: IO()
main = do
  n <- fmap (fst . fromJust . BS.readInt) BS.getLine
  print $ n ^ 3
