module Main where
import Text.Read (readMaybe)
import Data.Maybe (mapMaybe)

main :: IO ()
fuelCalc :: [Int] -> [Int]
moduleCalc :: Int -> Int

moduleCalc x = (div x 3 - 2)
fuelCalc [] = []
fuelCalc (x:xs)
  | moduleCalc(x) > 0 = moduleCalc(x) : fuelCalc(moduleCalc(x): xs)
  | otherwise = fuelCalc(xs)
readMaybeInt = readMaybe :: String -> Maybe Int

test = do
    print . sum $ fuelCalc $ [14, 1969, 100756]
    

main = do
    test
    contents <- readFile "app/input.txt"
    print . sum . fuelCalc . mapMaybe readMaybeInt . words $ contents

