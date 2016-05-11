length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

null' :: [a] -> Bool
null' [] = True
null' _  = False

head' :: [a] -> a
head' (x:xs) = x

tails' :: [a] -> [a]
tails' (x:xs) = xs

last' :: [a] -> a
last' (x:[]) = x
last' (x:xs) = last' xs

init' :: [a] -> [a]
init' (x:[]) = []
init' (x:xs) = x:(init' xs)
