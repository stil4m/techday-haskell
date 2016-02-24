ld :: Integer -> Integer
ld n = ldf 2 n

ldf k n | k `divides` n = k
        | k^2 > n = n
        | otherwise = ldf (k+1) n
