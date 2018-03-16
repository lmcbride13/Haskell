rvrs :: String -> String
rvrs x = awesome ++ is ++ curry
       where 
         awesome = drop 9 x
         is = take 4 (drop 5 x)
         curry = take 5 x
       -- drop 8 x -- awesome
        -- take 4 x -- Curry
         --take 4 (drop 4 x) -- is