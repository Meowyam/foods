import PGF
import Calculator
import Text.Parsec
import Text.ParserCombinators.Parsec.Number(int)

main :: IO ()
main = do
  gr <- readPGF "Calculator.pgf"
  interact (translate gr)

translate :: PGF -> String -> String
translate gr s = case parseAllLang gr (startCat gr) s of
   (lg,t:_):_ -> unlines [linearize gr l t]
   _ -> "NO PARSE"
