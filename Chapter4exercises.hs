-- chapter4exercises.hs
module Chapter4exercises where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x

-- is reverse a equal to a

-- isPalindrome x = 
--    reverse x == x

myAbs :: Integer -> Integer
myAbs x =
    if x > 0
        then x
    else -x

f :: (a,b) -> (c,d) -> ((b,d), (a,c))
f left right = ((snd left ,snd right), (fst left, fst right))

--addOne :: Integer -> Integer
addOne :: String -> Int
--x = (+)
addOne xs = w + 1
     where w = length xs