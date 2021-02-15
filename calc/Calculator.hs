module Calculator where

import PGF hiding (Tree)
----------------------------------------------------
-- automatic translation from GF to Haskell
----------------------------------------------------

class Gf a where
  gf :: a -> Expr
  fg :: Expr -> a

newtype GString = GString String  deriving Show

instance Gf GString where
  gf (GString x) = mkStr x
  fg t =
    case unStr t of
      Just x  ->  GString x
      Nothing -> error ("no GString " ++ show t)

newtype GInt = GInt Int  deriving Show

instance Gf GInt where
  gf (GInt x) = mkInt x
  fg t =
    case unInt t of
      Just x  ->  GInt x
      Nothing -> error ("no GInt " ++ show t)

newtype GFloat = GFloat Double  deriving Show

instance Gf GFloat where
  gf (GFloat x) = mkFloat x
  fg t =
    case unFloat t of
      Just x  ->  GFloat x
      Nothing -> error ("no GFloat " ++ show t)

----------------------------------------------------
-- below this line machine-generated
----------------------------------------------------

data GExp =
   GEAssign GExp GExp 
 | GEDiv GExp GExp 
 | GEInt GInt 
 | GEMinus GExp GExp 
 | GEPinfix GExp GExp 
 | GEPlus GExp GExp 
 | GETimes GExp GExp 
 | GParen GExp 
  deriving Show


instance Gf GExp where
  gf (GEAssign x1 x2) = mkApp (mkCId "EAssign") [gf x1, gf x2]
  gf (GEDiv x1 x2) = mkApp (mkCId "EDiv") [gf x1, gf x2]
  gf (GEInt x1) = mkApp (mkCId "EInt") [gf x1]
  gf (GEMinus x1 x2) = mkApp (mkCId "EMinus") [gf x1, gf x2]
  gf (GEPinfix x1 x2) = mkApp (mkCId "EPinfix") [gf x1, gf x2]
  gf (GEPlus x1 x2) = mkApp (mkCId "EPlus") [gf x1, gf x2]
  gf (GETimes x1 x2) = mkApp (mkCId "ETimes") [gf x1, gf x2]
  gf (GParen x1) = mkApp (mkCId "Paren") [gf x1]

  fg t =
    case unApp t of
      Just (i,[x1,x2]) | i == mkCId "EAssign" -> GEAssign (fg x1) (fg x2)
      Just (i,[x1,x2]) | i == mkCId "EDiv" -> GEDiv (fg x1) (fg x2)
      Just (i,[x1]) | i == mkCId "EInt" -> GEInt (fg x1)
      Just (i,[x1,x2]) | i == mkCId "EMinus" -> GEMinus (fg x1) (fg x2)
      Just (i,[x1,x2]) | i == mkCId "EPinfix" -> GEPinfix (fg x1) (fg x2)
      Just (i,[x1,x2]) | i == mkCId "EPlus" -> GEPlus (fg x1) (fg x2)
      Just (i,[x1,x2]) | i == mkCId "ETimes" -> GETimes (fg x1) (fg x2)
      Just (i,[x1]) | i == mkCId "Paren" -> GParen (fg x1)


      _ -> error ("no Exp " ++ show t)


