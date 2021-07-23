import Data.Maybe
import qualified Data.ByteString.Char8 as BS

readInt = fst . fromJust . BS.readInt
readIntLines = map readInt . BS.lines

printCase [] _ = return ()
printCase [0] _ = return ()
printCase (x:xs) n = do
  putStrLn $ "Case " ++ show n ++ ": " ++ show x
  printCase xs (n + 1)

main = do
  nums <- fmap readIntLines BS.getContents
  printCase nums 1
