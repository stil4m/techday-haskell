eval :: Expr -> Int
eval (I i) = i
eval (Add l r) = eval l + eval r
eval (Mult l r) = eval l * eval r
