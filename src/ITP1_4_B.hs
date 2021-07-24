import Text.Printf

main = do
    r_str <- getLine
    let r = read r_str :: Double
    printf "%f %f\n" (pi * r ** 2) (2 * pi * r)
