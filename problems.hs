import Debug.Trace (trace, traceShow)

myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

myButLast :: [a] -> a
myButLast = last . init
myButLast' x = reverse x !! 1

length' x = sum [1 | _ <- x]

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

numberPredicate = [x*2 | x <- [1..10], x*2 >= 12]

triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]

rightTriangles' :: Integer -> [(Integer, Integer, Integer)]
rightTriangles' l = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == l]

addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z

fact :: Int -> Int
fact n | trace ("fact abc: " ++ show n) $ False = undefined
fact n = product [1..n]

fact' :: Int -> Int
fact' n = foldr (*) 1 [1..n]

elementAt' :: [a] -> Int -> a
elementAt' (x:_) 1  = x
elementAt' [] _     = error "Index out of bounds"
elementAt' (_:xs) k
  | k < 1           = error "Index out of bounds"
  | otherwise       = elementAt' xs (k - 1)

listLength :: [Int] -> Int
listLength [] = 0
listLength (x:xs) = 1 + listLength xs

reverse' :: [x] -> [x]
reverse' [] = []
reverse' (x:xs) = reverse xs ++ [x]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

isPalindrome' []  = True
isPalindrome' [_] = True
isPalindrome' xs  = (head xs) == (last xs) && (isPalindrome' $ init $ tail xs)

--

data NestedList a = Elem a | List [NestedList a]
 
flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x

--


