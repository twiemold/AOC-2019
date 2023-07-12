module Main where
import Text.Read (readMaybe)
import Data.Maybe (mapMaybe)

main :: IO ()
readMaybeInt = readMaybe :: String -> Maybe Int
main = do
    contents <- readFile "app/input.txt"
    print . sum $ map ($ 2) $ map (-) . map ($ 3) $ map div . mapMaybe readMaybeInt . words $ contents
