module Print2 where

main :: IO ()
main = do
  putStrLn "Count to four for me:"
  putStr "one, two"
  putStr ", thee and"
  putStrLn " four!"
