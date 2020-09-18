abstract Smart = {

flags startcat = Comment ;

cat 
  Comment ;
  Kind ; 
  Action Kind ; 
  Device Kind ; 

  Switchable Kind ;
  Dimmable Kind ;

fun
  CAction : (k : Kind) -> Action k -> Device k -> Comment ;

  DKindOne  : (k : Kind) -> Device k ;

  light, fan : Kind ;

--appliance : Kind ;  

  switchOn : (k : Kind) -> Switchable k -> Action k ;

  dim : (k : Kind) -> Dimmable k -> Action k ;

-- proof objects

--fan : Switchable appliance ;
--light : Dimmable appliance ;

  switchable_fan : Switchable fan ;
  dimmable_light : Dimmable light ;

}
