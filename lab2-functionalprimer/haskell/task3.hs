sgn :: (Ord a, Num a) => a -> Int
sgn x  | x < 0 = -1 
       | x == 0 = 0 
       | otherwise = 1

main = do
    putStrLn "Please enter a number"
    input <- getLine 
    let x = (read input :: Int) -- read converts any string into any other value you need.
    putStrLn( show (sgn (x)) ) -- show converts any value into a string.

    -- using these two functions is a form of input validation, in that it checks that user input can be an integer, before using it as a string again.