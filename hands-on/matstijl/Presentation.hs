module Presentation


where


even' :: Integer -> Bool
even' x = x `mod` 2 == 0

fib :: Integer -> Integer
fib 0 = 1
fib 1 = 1
fib n = fib' (0,1,1) (n-1) where
  fib' (x,y,z) n = if n == 0 then z else fib' (y,z,y+z) (n-1)
