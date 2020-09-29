concrete Predicatec of Predicate = open Prelude in {
    lincat
      Proposition = {s: Str};
      Individual = {s: Str};


    lin
      --Forall : (Individual -> Proposition) -> Proposition ;
      Forall P = {s = "(" ++ "Forall" ++ P.$0 ++ ")" ++ P.s};
      --Exists : (Individual -> Proposition) -> Proposition ;
      Exists P = {s = "(" ++ "Exists" ++ P.$0 ++ ")" ++ P.s};

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

      P = {s = "Bob is a cat"};
      Q = {s = "Cats have tails"};
}

