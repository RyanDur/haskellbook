module BuildingFunctions where

exclaim :: [Char] -> [Char]
exclaim word = word ++ "!"

fifthLetter :: [Char] -> Char
fifthLetter word = word !! 4

whatIsIt :: [Char] -> [Char]
whatIsIt word = drop 9 word

thirdLetter :: [Char] -> Char
thirdLetter word = word !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

rvrs :: [Char] -> [Char]
rvrs w = (drop 9 w) ++ (take 4 (drop 5 w)) ++ (take 5 w)
