module Main where
import Text.Read (readMaybe)
import Data.Maybe (mapMaybe)

main :: IO ()
fuelCalc :: [Int] -> Int

fuelCalc x = sum $ map (\y -> div y 3 - 2) $ x
readMaybeInt = readMaybe :: String -> Maybe Int

test = do
    print "hi"
    print . fuelCalc $ [100756]

main = do
    test
    contents <- readFile "app/input.txt"
    print . fuelCalc . mapMaybe readMaybeInt . words $ contents

