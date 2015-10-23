module Snippets

where

-------------------------------
-- Map ------------------------
-------------------------------
-- Maps an list from one type to another with a given function
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f x = f (head x) : map' f (tail x)

map' f (x:xs) = f x : map' f xs

-- 0) Generics in Header
-- 1) Base Case
-- 2) First with head and tail
-- 3) Destructuring
-- 4) Explain why we do not need parentheses.


-------------------------------
-- Filter ---------------------
-------------------------------
-- Filters the elements of an list with a given function
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs) = if f x then x : filter' f xs else filter' f xs

filter' f (x:xs) = if f x then x : xs' else xs'
  where xs' = filter' f xs

-- 1) Base Case
-- 2) If-else
-- 3) Where


-------------------------------
-- Any - All ------------------
-------------------------------
all' :: (a -> Bool) -> [a] -> Bool
--all' f [] = True
--all' f (x:xs) = f x && all' f xs

any' :: (a -> Bool) -> [a] -> Bool
--any' f [] = False
--any' f (x:xs) = f x || all' f xs


-------------------------------
-- Fold -----------------------
-------------------------------
all' f xs = foldl (&&) True (map f xs)
any' f xs = foldl (||) False (map f xs)


-------------------------------
-- Lambda ---------------------
-------------------------------
summutation :: Int -> Int
summutation x = div (x*(x+1)) 2

summutationR :: [Int]
summutationR = map summutation [1..10]


-------------------------------
-- Patern Matching ------------
-------------------------------
data Expr = I Int
          | Add Expr Expr
          | Mult Expr Expr
          deriving (Show)

expr1 = (Mult (I 4)
              (Add (I 1) (I 2)))
expr2 = (Add (I 4)
             (Mult (I 1) (I 2)))

eval :: Expr -> Int
eval (I i) = i
eval (Add l r) = eval l + eval r
eval (Mult l r) = eval l * eval r


opt :: (Maybe a) -> a
opt Nothing = error "EntityNotFound"
opt (Just a) = a

opt :: (a -> b) -> (Maybe a) -> b
opt _ Nothing = error "EntityNotFound"
opt f (Just a) = f a


-------------------------------
-- Composition ----------------
-------------------------------
f = (+1)
g = show

h x = g (f x)
h x = g $ f x
h = g . f


-------------------------------
-- Guards      ----------------
-------------------------------
divides :: Integral a => a -> a -> Bool
divides m n = mod m n == 0

ld :: Integer -> Integer
ld n = ldf 2 n

ldf k n | divides k n = k
        | k^2>n =n
        | otherwise = ldf (k+1) n