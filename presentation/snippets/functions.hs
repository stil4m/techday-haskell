foo :: String
foo = "Hello"

bar :: String -> String
bar n = reverse n

foobar n = foo ++ bar n
