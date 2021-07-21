import Data.Maybe
import qualified Data.ByteString.Char8 as BS

main = do
  let readInt = fst . fromJust . BS.readInt
  let readIntList = map readInt . BS.words

  let circleIsInRect x y r w h =
        x - r >= 0 && y - r >= 0 &&
        x + r <= w && y + r <= h

  [w, h, x, y, r] <- fmap readIntList BS.getLine
  putStrLn $ if circleIsInRect x y r w h
               then "Yes"
               else "No"
