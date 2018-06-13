class Listable a where
  toList :: a -> [Int]
  
-- show
instance Listable Int where
  -- toList :: Int -> [Int]
  toList x = [x]

instance Listable Bool where
  toList True  = [1]
  toList False = [0]

instance Listable Double where
  toList 1.0 = [1]
  toList x   = [0]

data Tree a = Empty | Node a (Tree a) (Tree a)

instance Listable (Tree Int) where
  toList Empty        = []
  toList (Node x l r) = toList l ++ [x] ++ toList r


myTree :: Tree Int
myTree = Node 1 (Node 2 Empty (Node 3 Empty Empty)) (Node 4 Empty Empty)

printTree = print (toList myTree)

main = print (toList True, toList (7::Int), toList (1.0::Double), toList (2.0::Double))

