{-# LANGUAGE NoMonomorphismRestriction #-}
module DetermineTheType where

-- 1)

a = (*9)6 -- Num a => a
b = head [(0, "doge"), (1, "kitteh")] --  Num a => (a, [Char])
c = head [(0 :: Integer, "doge"), (1, "kitteh")] --  (Integer, [Char])
d = if False then True else False -- d :: Bool
e = length [1 ,2 ,3 ,4, 5] -- e :: Int
f = (length [1, 2, 3, 4]) > (length "TACOCAT") -- f :: Bool

-- 2)

x = 5
y = x + 5
w = y * 10 -- w :: Num a => a

-- 3)

z y = y * 10 -- z :: Num a => a -> a

-- 4)

f' = 4 / y -- f :: Fractional a => a

-- 5)

x'  = "Julie"
y'  = " <3 "
z'  = "Haskell"
f'' = x' ++ y' ++ z' -- f'' :: [Char]

-- Write a type signature

-- 1)

functionH :: [a] -> a
functionH (x:_) = x

-- 2)

functionC :: Ord a =>  a -> a -> Bool
functionC x y = if (x > y) then True else False

-- 3)

functionS :: (a, b) -> b
functionS (x, y) = y

-- Given a type write a funcction

-- 1)

i :: a -> a
i x = x

-- 2)

c' :: a -> b -> a
c' x y = x

-- 3)

c'' :: b -> a -> b
c'' x y = x

-- 4)

g :: a -> b -> b
g x y = y

-- 5)

h :: [a] -> [a]
h (_:xs) = xs

-- 6)

co :: (b -> c) -> (a -> b) -> a -> c
co f g h = f(g(h))

-- 7)

j ::  (a -> c) -> a -> a
j f x = x

-- 8)

k :: (a -> b) -> a -> b
k x y = x(y)

-- Fix it

-- 1)

fstString :: [Char] -> [Char]
fstString x =  x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing = if (x < y) then
  fstString x else sndString y
  where x = "Singin"; y = "Somewhere"
