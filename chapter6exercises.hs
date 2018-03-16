module Chapter6exercises where

data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

data Mood = Blah
          | Woot deriving Show

instance Eq Mood where
settleDown x = if x == Woot
                 then Blah
                 else x