-- https://www.csd.uwo.ca/~lkari/logic14.pdf
-- https://www.geeksforgeeks.org/mathematic-logic-predicates-quantifiers/


abstract Predicate = {
    flags startcat = Proposition; 

    cat
      Proposition;
      Individual;
      --Quantifier;
      --Domain;
      --Validation; -- validates the proposition to make the statement true or false
      -- these are example statements

    fun
      -- Variable -> Predicate -> Statement;
      -- cat         has tail     cat has tail
      -- x           P            P(x)
      -- Proposition with a true/false value

      -- P         proposition
      -- Domain    ->  Quantifier ->   Proposition;
      -- In a domain, individual, all/some, proposition

      -- Universal quantification
      Forall : (Individual -> Proposition) -> Proposition ;

      -- Existential quantification
      Exists : (Individual -> Proposition) -> Proposition ;
      
      -- logical connectives
      -- https://www.geeksforgeeks.org/proposition-logic/?ref=lbp
      -- P -> not P
      Not : Proposition -> Proposition ;
      -- conjunction: when P is True, Q is True, P AND Q is True
      And : (P, Q : Proposition) -> Proposition ; 
      -- disjunction: WHen P is True or Q is True, P OR Q is True
      Or : (P, Q: Proposition) -> Proposition ;
      -- implies: if p then q, p -> q
      Implies : (P, Q: Proposition) -> Proposition;

      P, Q: Individual -> Proposition;

      Bob, Cats: Individual;
}
