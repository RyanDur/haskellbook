module TypeKwonDo where

data Woot
data Blah

f :: Woot -> Blah
f = undefined

g :: (Blah, Woot) -> (Blah, Blah)
g (b, w) = (b, f w)

-- 1)

h :: Int -> String
h = undefined

i :: String -> Char
i = undefined

j :: Int -> Char
j x = i(h(x))

-- 2)

data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e x = w(q(x))

-- 3)

data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (xz(x), yz(y))
