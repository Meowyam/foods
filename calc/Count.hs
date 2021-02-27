module Count where

import PGF (Tree)
import Calculator

-- fg :: Tree -> a
-- run count on a
-- gf :: a -> Tree

getExp :: Tree -> Tree
getExp = gf . getOp . fg

--getOp :: GExp -> GExp -> GExp
getOp y = case y of
  GEPlus x1 x2 -> GEInt (GInt ((getFirst y) + (getSecond y)))
  GEMinus x1 x2 -> GEInt (GInt ((getFirst y) - (getSecond y)))
  GETimes x1 x2 -> GEInt (GInt ((getFirst y) * (getSecond y)))
  GEDiv x1 x2 -> GEInt (GInt ((getFirst y) `div` (getSecond y)))

getFirst :: GExp -> Int
getFirst (GEPlus (GEInt x1) x2) = case x1 of GInt i -> i
getFirst (GEMinus (GEInt x1) x2) = case x1 of GInt i -> i
getFirst (GETimes (GEInt x1) x2) = case x1 of GInt i -> i
getFirst (GEDiv (GEInt x1) x2) = case x1 of GInt i -> i

getSecond :: GExp -> Int
getSecond (GEPlus x1 (GEInt x2)) = case x2 of GInt i -> i 
getSecond (GEMinus x1 (GEInt x2)) = case x2 of GInt i -> i 
getSecond (GETimes x1 (GEInt x2)) = case x2 of GInt i -> i 
getSecond (GEDiv x1 (GEInt x2)) = case x2 of GInt i -> i 
