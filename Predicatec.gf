concrete Predicatec of Predicate = open Prelude in {
    lincat
      Individual, Proposition = SS;

    lin
      --Forall : (Individual -> Proposition) -> Proposition ;
      Forall P = {s = "for all" ++ P.$0 ++ " -> " ++ P.s};
      --Exists : (Individual -> Proposition) -> Proposition ;
      Exists P = {s = "There exists" ++ P.$0 ++ " -> " ++ P.s};

      --Not : Proposition -> Proposition ;
      Not P = {
          s = "not(" ++ P.s ++ ")"
      };

      And P Q = {
          s = "and(" ++ P.s ++ ",(" ++ Q.s ++ ")"
      };

      Implies P Q = {
          s = P.s ++ "=>" ++ Q.s
      };

      Or P Q = {
          s = P.s ++ "v" ++ Q.s 
      };

      P ind = {s = "cat(" ++ ind.s ++ ")"};
      Q ind = {s = "hastail(" ++ ind.s ++ ")"};

      Bob = {s = "Bob"};
      Cats = {s = "Cats"};
}

