import PGF
import Calculator
import Text.Parsec
import Text.ParserCombinators.Parsec.Number(int)

calcing :: Tree -> Tree
calcing = gf . getExp . fg

getExp :: GExp -> GExp

main :: IO ()
main = do
  gr <- readPGF "Calculator.pgf"
  putStrLn "Write your equation here"
  putStrLn "Write quit to exit"
  loop (calcing gr)

loop :: (String -> String) -> IO ()
loop calc = do
  s <- getLine
  if s == "quit" then putStrLn "bye" else do
    putStrLn $ calc s
    loop calc
