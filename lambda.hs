greaterThan100 :: [Integer] -> [Integer]
greaterThan100 xs = filter (\x -> x > 100) xs

main = print (greaterThan100 [1,9,349,6,907,98,105])

