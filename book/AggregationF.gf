concrete AggregationF of Aggregation = {

  lincat
    S, NP, VP = Str ;

  lin
    PredVP x y = x ++ y ;
    ConjS  x y = x ++ "ou" ++ y ;
    ConjVP x y = x ++ "ou" ++ y ;
    ConjNP x y = x ++ "ou" ++ y ;

    Run  = "court" ;
    Walk = "marche" ;
    John = "John" ;
    Mary = "Mary" ;
}
