abstract Foodsres = {

  flags startcat=Comment ;

  cat
    Comment ; Item ; Kind ; Quality ; Person ; Act ;

  fun
    Pred : Item -> Quality -> Comment ;
    This, That, These, Those : Kind -> Item ;
    Mod : Quality -> Kind -> Kind ;
    Very : Quality -> Quality ;
    Cheese, Fish, Pizza, Wine, Salad, Cake : Kind ;
    Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;
    She, He, They : Person ;
    Eat : Act ;
    EatsFood : Person -> Act -> Kind -> Comment;
}