concrete CalculatorC of Calculator = open Formal, Prelude in {
  
    flags lexer = codelit ; unlexer = code ; startcat = Exp ;

    lincat
      Exp = TermPrec ;
  
    lin
      EPlus  = infixl 0 "+" ;
      EMinus = infixl 0 "-" ;
      ETimes = infixl 1 "*" ;
      EDiv   = infixl 1 "/" ;
      EInt i = constant i.s ;
      EAssign = infixr 0 "=" ;
      EPinfix = infixn 0 ":-" ;

     oper
   --     addParen :  Str -> Str = \s -> 
   --         "(" ++ s ++ ")";

        Prec : PType = Predef.Ints 2 ;
        TermPrec : Type = {s : Str ; p : Prec} ;
        mkPrec : Prec -> Str -> TermPrec = \p,s -> {s = s ; p = p} ;
        usePrec : TermPrec -> Prec -> Str = \x,p ->
          case lessPrec x.p p of {
            True  => "(" ++ x.s ++ ")" ;
            False => x.s
          } ;
      constant : Str -> TermPrec = mkPrec 2 ;

      infixl : Prec -> Str -> (_,_ : TermPrec) -> TermPrec = \p,f,x,y ->
        mkPrec p (usePrec p x ++ f ++ usePrec (nextPrec p) x) ;
      infixr : Prec -> Str -> (_,_ : TermPrec) -> TermPrec = \p,f,x,y ->
        mkPrec p (usePrec (nextPrec p) x ++ f ++ usePrec p y) ;
      infixn : Prec -> Str -> (_,_ : TermPrec) -> TermPrec = \p,f,x,y ->
        mkPrec p (usePrec (nextPrec p) x ++ f ++ usePrec (nextPrec p) y) ;
}
-- associativity: https://en.wikipedia.org/wiki/Operator_associativity#Right-associativity_of_assignment_operators
