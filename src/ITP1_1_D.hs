import Data.Maybe
import qualified Data.ByteString.Char8 as BS 

main = do
    let readInt = fst . fromJust . BS.readInt 

    n <- fmap readInt BS.getLine
    let (h, n1) = n `divMod` 3600
    let (m, s) = n1 `divMod` 60

    putStrLn $ show h ++ ":" ++ show m ++ ":" ++ show s
