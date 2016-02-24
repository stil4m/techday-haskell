euler9 :: Integer
euler9 = product [a, b, c]
  where (a, b, c) = head [(x,y,z) | x <- [1..333],
                                    y <- [x..500],
                                    let z = 1000-x-y,
                                    x^2 + y^2 == z^2]
