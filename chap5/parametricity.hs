module Parametricity where

foo :: a -> a
foo x = x

left :: a -> a -> a
left x y = x

right :: a -> a -> a
right x y = y
