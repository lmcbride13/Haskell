module Chapter5types where

f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

--h :: Int -> Char
--h i = 
--    let 
--        fresult = f(i)
--        gresult = g(fresult)
--    in 
--        gresult

h :: Int -> Char 
h i = g(f(i))

        --f(i) g(s) = c