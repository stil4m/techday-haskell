# Trees

Provided code:

```
data Blt a = Leaf a | Node (Blt a) (Blt a) deriving (Eq,Show)
data Tree a = T a [Tree a] deriving (Eq,Ord,Show)

exampleTree :: Blt String
exampleTree =  Node (Node (Leaf "Hoare, Tony")
                          (Leaf "Turing, Alan"))
                    (Leaf "Goedel, Kurt")

example1 = T 1 [T 2 [], T 3 []]
example2 = T 0 [example1,example1,example1]
```

---
1) Define a function `leafCount :: Blt a -> Int` that counts the number of leaf nodes in a binary tree.

```
leafCount :: Blt a -> Int
leafCount ....
```

----
2) Define a function mapB that does for binary trees what map does for lists. The type is:

```
mapB :: (a -> b) -> Blt a -> Blt b
```

Example usage would be:

```
> mapB (map toUpper) exampleTree
Node (Node (Leaf "HOARE, TONY") (Leaf "TURING, ALAN")) (Leaf "GOEDEL, KURT")
```

---
3) Define a function `count :: Tree a -> Int` that counts the number of
nodes of a tree.


---
4) Define a function mapT that does for trees what map does for lists. The type
is:

```
mapT :: (a -> b) -> Tree a -> Tree b
```

Example usage would be:

```
> mapT succ example1
T 2 [T 3 [],T 4 []]
```

---
5) Write a function `collect` that collects the information in a tree of type `Tree a` in a list of type `[a]`. The type specification is:

```
collect :: Tree a -> [a]
```

Example usage would be:
```
>collect example2
[0,1,2,3,1,2,3,1,2,3]
```

---
6) A fold operation on trees can be defined by

```
foldT :: (a -> [b] -> b) -> Tree a -> b
foldT f (T x ts) = f x (map (foldT f) ts)
```

Now redefine `count`, `mapT` and `collect` in terms of `foldT`.
