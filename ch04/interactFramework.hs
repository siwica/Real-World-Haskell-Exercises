import System.Environment (getArgs)
import Data.List (transpose)

interactWith function inputFile outputFile = do
  input <- readFile inputFile
  writeFile outputFile (function input)

firstWords :: String -> String
firstWords str = unlines $ map go (lines str)
  where go "" = ""
        go x = head $ words x

transposeContent :: String -> String
transposeContent str = (unlines . transpose . lines) $ str

        
main = mainWith myFunction
  where mainWith function = do
          args <- getArgs
          case args of
            [input, output] -> interactWith function input output
            _               -> putStrLn "error: exactly two arguments needed"

myFunction = transposeContent
