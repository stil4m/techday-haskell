opt :: (Maybe a) -> a
opt Nothing = error "NotFound"
opt (Just a) = a
