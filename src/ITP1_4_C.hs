import Data.Maybe
import qualified Data.ByteString.Char8 as BS

readInt = fst . fromJust . BS.readInt

calc a op b = case op of "+" -> a + b
                         "-" -> a - b
                         "*" -> a * b
                         "/" -> a `div` b

calcLines [] = return ()
calcLines ([a, op, b]:xs)
  | op == BS.pack "?" = return ()
  | otherwise = do
      print $ calc (readInt a) (BS.unpack op) (readInt b)
      calcLines xs

main = do
    lines <- fmap (map BS.words . BS.lines) BS.getContents
    calcLines lines
