import Data.Char (ord, toUpper, isAlpha, isDigit)

ibanresort :: String -> String
ibanresort a = drop 4 a ++ take 4 a

a2nStr :: Char -> String
a2nStr n
  | isAlpha n = show (ord (toUpper n) - ord 'A' + 10)
  | isDigit n = [n]
  | otherwise = error "Not an IBAN"

iban :: String -> Bool
iban n = mod (read (concat (map a2nStr (ibanresort n))) :: Int) 97 == 1


-- Usage: iban "BE62510007547061"

