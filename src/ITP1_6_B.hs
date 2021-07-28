import qualified Data.ByteString.Char8 as BS

allCards = [ BS.pack $ x ++ " " ++ show y | x <- ["S", "H", "C", "D"], y <- [1..13] ]

main = do
    n <- BS.getLine
    cards <- BS.getContents
    mapM_ (putStrLn . BS.unpack) $ filter (`notElem` BS.lines cards) allCards
