module EqInstances where

data TisAnInteger = 
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn x) (TisAn y) = x == y

data Thingy = 
    Thingy1 Integer 
  | Thingy2 Integer
  deriving (Show)

instance Eq Thingy where
  (==) (Thingy1 x) (Thingy1 y) = x == y
  (==) (Thingy1 _) (Thingy2 _) = False
  (==) (Thingy2 x) (Thingy2 y) = x == y
  (==) (Thingy2 _) (Thingy1 _) = False 

data Trivial = 
  Trivial'

instance Eq Trivial where
  Trivial' == Trivial' = True

data TwoIntegers = 
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two x y) (Two a b) = x == a && y == b
  --(==) (Two _ _) (Two _ _) = False

data StringOrInt =
  TisAnInt Int | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt _) (TisAString _) = False
  (==) (TisAString _) (TisAnInt _) = False
  (==) (TisAnInt x) (TisAnInt y) = x == y
  (==) (TisAString x) (TisAString y) = x == y


data Pair a =
    Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair a b) (Pair c d) = a == c && b == d

data Tuple a b = 
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a b) (Tuple c d) = a == c && b == d

data Which a =
     ThisOne a
  |  ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne _) (ThatOne _) = False
  (==) (ThatOne _) (ThisOne _) = False
  (==) (ThisOne a) (ThisOne b) = a == b
  (==) (ThatOne a) (ThatOne b) = a == b

data EitherOr a b =
    Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello _) (Goodbye _) = False
  (==) (Goodbye _) (Hello _) = False
  (==) (Hello x) (Hello y) = x == y
  (==) (Goodbye x) (Goodbye y) = x == y