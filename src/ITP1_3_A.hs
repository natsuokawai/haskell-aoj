import Data.Function

main = flip fix 0 $ \loop n ->
         if n == 1000 then return ()
         else do
           putStrLn "Hello World"
           loop (n + 1)
