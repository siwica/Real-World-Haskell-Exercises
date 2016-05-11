safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x:xs) = Just xs

safeLast :: [a] -> Maybe a
safeLast [] = Nothing
safeLast (x:[]) = Just x
safeLast (x:xs) = safeLast xs

safeInit :: [a] -> Maybe [a]
safeInit [] = Nothing
safeInit x = Just (go x)
  where go (x:[]) = []
        go (x:xs) = x:(go xs)

splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith _ [] = []
splitWith f cs = 
  let (pre, (x:xs)) = break (not . f) cs
  in if (null pre)
     then go xs
     else pre:(go xs)
  where go x = if null x
               then []
               else splitWith f x
             
