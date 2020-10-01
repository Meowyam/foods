abstract Calculator = {
    flags startcat = Exp ;
    
    cat Exp ;
  
    fun
      EPlus, EMinus, ETimes, EDiv, EAssign, EPinfix : Exp -> Exp -> Exp ;
      EInt : Int -> Exp ;
      Paren : Exp -> Exp ;
}