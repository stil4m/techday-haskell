# Fast Modular Exponentiation

Implement Fast Modular Exponentiation. Information [here](https://www.khanacademy.org/computing/computer-science/cryptography/modarithmetic/a/what-is-modular-arithmetic).

## Provided code

```
-- Naive
expM :: Integer -> Integer -> Integer -> Integer
expM x y = rem (x^y)


-- Blazing Fast
exM :: Integer -> Integer -> Integer -> Integer
exM x y z = undefined


testExM :: Integer -> Integer -> Integer -> Bool
testExM x y z = expM x y z == exM x y z
```

## Functional Test

Run `testExM` with low numbers. Remember `expM` does not perform well.


## Performance Test
You can test your code for performance with the following function calls:

```
expM 123456789 987654321 123456987
exM 123456789 987654321 123456987
```
