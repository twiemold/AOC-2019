module Main where
import Text.Read (readMaybe)
import Data.Maybe (mapMaybe)

main :: IO ()
readMaybeInt = readMaybe :: String -> Maybe Int
main = do
    contents <- readFile "app/input.txt"
    print . sum $ map (\x -> div x 3 - 2) . mapMaybe readMaybeInt . words $ contents
