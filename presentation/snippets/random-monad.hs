addToRandom :: Int -> IO Int
addToRandom x = do
    n <- getRandomInt
    return (n + x)
