import Control.Monad
import Data.Array.IO
import qualified Data.ByteString.Char8 as BS
import Data.Maybe

readInt = fst . fromJust . BS.readInt

readIntList = map readInt . BS.words

main = do
  n <- fmap readInt BS.getLine
  arr <- newArray ((0, 0, 0), (3, 2, 9)) 0 :: IO (IOArray (Int, Int, Int) Int)

  forM_ [1 .. n] $ \_ -> do
    [b, f, r, v] <- fmap readIntList BS.getLine
    cur <- readArray arr (b -1, f -1, r -1)
    writeArray arr (b -1, f -1, r -1) (cur + v)

  forM_ [0 .. 3] $ \i -> do
    forM_ [0 .. 2] $ \j -> do
      forM_ [0 .. 9] $ \k -> do
        new <- readArray arr (i, j, k)
        putStr $ show new
        if k == 9 then putStrLn "" else putStr " "

    if i == 3 then return () else putStrLn "####################"
