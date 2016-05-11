import Data.List

-- exercise 1
length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

length'' :: [a] -> Int
length'' = foldl (\c _ -> c + 1) 0

-- exercise 3
mean :: (Fractional a) => [a] -> a
mean xs = (sum xs) / (flen xs)
  where flen = fromIntegral . length
        sum = foldl (\c e -> c + e) 0

-- exercise 4
toPalindrom :: [a] -> [a]
toPalindrom xs = xs ++ (reverse xs)

-- exercise 5
isPalindrom :: (Eq a) => [a] -> Bool
isPalindrom xs = xs == (reverse xs)

-- exercise 6
sortSubLists :: [[a]] -> [[a]]
sortSubLists = sortBy (\x y -> compare (length x) (length y))

-- exercise 7
intersperse' :: a -> [[a]] -> [a]
intersperse' _ [] = []
intersperse' s (x:xs)
  | null xs   = x
  | otherwise = x ++ [s] ++ intersperse' s xs

-- exercise 9
data Direction = Left | Right | Straight

-- exercise 10
data Point = Point Num Num Num
-- pturnDirection = 
