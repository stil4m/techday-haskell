# Evaluator

In this challenge you are going to expand the given implementation for `Expr` from the presentation to realize a imperative programming structure.


## Source

Create a Haskell source file `Evaluator.hs` to work with

```
module Evaluator

where

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
```

## Tasks

## 1. Add Subtraction and Division

Make the code function for subtraction and division.

## 2. Add Environment

Imperative programming requires an environment.
Add the following code:

```
type Env = Var -> Integer
type Var = String

initEnv :: Env
initEnv = \ _ -> undefined

-- Extends a given function with a new mapping
update :: Eq a => (a -> b) -> (a,b) -> a -> b
update f (x,y) = \ z -> if x == z then y else f z

-- Assigns a variable in an environment to a given expression
assign :: Var -> Expr -> Env -> Env
assign var expr c = update c (var, eval c expr)
```

Example usage to create an environment with the above code:

```
(assign "y" (I 5) (assign "x" (I 3) initEnv))
```

Tasks:

* Add a `V` for variables to the `Expr` data type.
* Add a `Env` argument to the `eval` function.
* Make sure `eval` works with different environments.


## 3. Introduce Assignments in the environment

You may want to introduce the following code:

```
data Statement = Ass Var Expr
               | Seq [Statement]
               deriving (Eq,Show)

exec :: Env -> Statement -> Env
exec e s = undefined
```

Implement the `exec` function. You should be able to evaluate a sequence of statements and assign new variables.

## 4. Add Conditional and While

Add `Cond Condition Statement Statement` and `While Condition Statement` to the `Statement` data type.

Can you make the `exec` function work?
