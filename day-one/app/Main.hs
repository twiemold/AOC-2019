module Main where
import Text.Read

main :: IO ()
main = do
    contents <- readFile "app/input.txt"
    print . map (readMaybe :: String -> Maybe Int) . words $ contents
