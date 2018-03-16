-- chapter3exercises
module Chapter3exercises where

addExclaimation :: String -> String
addExclaimation x = x ++ "!"
    --concat ["x", "y"]
    -- where y :: String
    --       y = !

indexFour :: String -> Char
--indexFour x = x !! 4
indexFour x = (!!) x 4

dropNine :: String -> String
dropNine x = drop 9 x

thirdLetter :: String -> Char
thirdLetter x = (!!) x 2

letterIndex :: Int -> Char
letterIndex x = (!!) "Curry is awesome!" x