module Reverse where

rvrs :: String -> String
rvrs w = (drop 9 w) ++ (take 4 (drop 5 w)) ++ (take 5 w)

main :: IO ()
main = print $ rvrs "Curry is awesome"
