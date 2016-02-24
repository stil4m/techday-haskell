opt :: (a -> b) -> (Maybe a) -> b
opt _ Nothing = error "NotFound"
opt f (Just a) = f a

foo = opt (+9000) getSomeObject
