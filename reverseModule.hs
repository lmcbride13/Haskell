module Reverse where

rvrs :: String -> String
rvrs x = awesome ++ is ++ curry
  where 
    awesome = drop 9 x
    is = take 4 (drop 5 x)
    curry = take 5 x

main :: IO ()
main = print (rvrs "Curry is awesome")

-- curry :: String
-- curry = "Curry"

-- is :: String
-- is = "is"

-- awesome :: String
-- awesome = "awesome"

