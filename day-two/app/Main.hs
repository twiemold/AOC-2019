module Main where
import Data.Array
import Text.Read (readMaybe)
import Data.Maybe (mapMaybe)

main :: IO ()
test :: IO ()
readMaybeInt = readMaybe :: String -> Maybe Int
wordsWhen     :: (Char -> Bool) -> String -> [String]
wordsWhen p s =  case dropWhile p s of
                      "" -> []
                      s' -> w : wordsWhen p s''
                            where (w, s'') = break p s'

test = do
    let array1 = listArray (0, 3) [0, 1, 1, 2, 2, 3]
    let test = length array1
    print $ array1 ! 2

main = do
    test
    contents <- readFile "app/input.txt"
    let values = mapMaybe readMaybeInt $ wordsWhen(==',') contents
    let array2 = listArray (0, maximum values) values 
    print array2
