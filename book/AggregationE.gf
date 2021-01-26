concrete AggregationE of Aggregation = {

  lincat
    S, NP, VP = Str ;

  lin
    PredVP x y = x ++ y ;
    ConjS  x y = x ++ "or" ++ y ;
    ConjVP x y = x ++ "or" ++ y ;
    ConjNP x y = x ++ "or" ++ y ;

    Run  = "runs" ;
    Walk = "walks" ;
    John = "John" ;
    Mary = "Mary" ;
}
