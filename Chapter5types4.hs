module Chapter5types4 where

munge :: (x -> y)
      -> (y -> (w, z))
      -> x
      -> w
munge xTy yTwz x = result 
    where
        (result, _) = yTwz(xTy(x))