import PGF
import Calculator
import Count

main :: IO ()
main = do
  gr <- readPGF "Calculator.pgf"
  loop (translate getExp gr)

loop :: (String -> String) -> IO ()
loop trans = do
  s <- getLine
  if s == "quit" then putStrLn "bye" else do
    putStrLn $ trans s
    loop trans

translate :: (Tree -> Tree) -> PGF -> String -> String
translate tr gr s =
  case parseAllLang gr (startCat gr) s of
    (lg,t:_):_ -> linearize gr lg (tr t)
    _ -> "NO PARSE"

