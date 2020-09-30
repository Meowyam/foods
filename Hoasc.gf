concrete Hoasc of Hoas = open Prelude in {
    lincat
      Ind, Prop = SS;
    lin
      All B = {s = "(" ++ "All" ++ B.$0 ++ ")" ++ B.s};
      Eq A B = {s = "(" ++ A.s ++ "is equal to" ++ B.s ++ ")"} ;
}