concrete SmartEng of Smart = open Prelude in {

lincat 
  Comment = SS ;
  Kind = {s : Str} ; 
  Action = {s : Str ; part : Str} ;
  Device = {s : Str} ;
  Switchable = {} ;
  Dimmable = {} ;

lin
  CAction _ act dev = ss (act.s ++ act.part ++ dev.s) ;

  DKindOne  k = { s = "the" ++ k.s };

  fan = mkNoun "fan" ;
  light = mkNoun "light" ;

  switchOn _ _ = mkVerb "switch" "on" ;

  dim _ _ = mkVerb "dim" [] ;

  
oper
  mkNoun : Str -> {s : Str} = \light -> {s=light} ;
  
  mkVerb : (_,_ : Str) -> {s : Str ; part : Str} = \switch,on -> {
    s = switch;
    part = on
    } ;
}

