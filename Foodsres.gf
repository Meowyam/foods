abstract Foodsres = {

  flags startcat=Comment ;

  cat
    Comment ;
    Item ;
    Kind ;
    Quality ;
    Person ;
    Food Kind;
    Act Kind ;

  fun
    Pred : Item -> Quality -> Comment ;
    This, That, These, Those : Kind -> Item ;
    Mod : Quality -> Kind -> Kind ;
    Very : Quality -> Quality ;
    She, He, They : Person ;
    Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;

    Pizza, Wine : Kind ;
    Eat : Act Pizza ;
    Drink : Act Wine ;

    FoodAct : (k: Kind) -> Act k -> Food k -> Comment ;
    FoodKind : (k: Kind) -> Food k ;

    TheyEatsFood : (k: Kind) -> Person -> Act k -> Food k -> Comment ;
  }
