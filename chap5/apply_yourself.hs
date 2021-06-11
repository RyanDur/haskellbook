myConcat x = x ++ " yo"         -- [Char] -> [Char]
myMult x = (x/3)*5              -- Fractional a => a -> a
myTake x = take x " hey you"    -- Int -> [Char]
myCom x = x > (length [1..10])  -- Int -> Bool
myAlph x = x < 'z'              -- Char -> Bool
