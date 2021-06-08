module Chap4Exercises where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

myAbs :: Integer -> Integer
myAbs x = if x < 0 then -1 * x else x

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f l r = ((snd l, snd r), (fst l, fst r))

x = (+)

foo :: [Int] -> Int
foo xs = w + 1
  where w = length xs
