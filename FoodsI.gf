-- syntax and lexfoods are interface modules
--the functor opens interfaces

--functor instantiation
incomplete concrete FoodsI of Foodsres = open Syntax, LexFoods, Prelude in {
  lincat
    Comment = Cl ;
    Item = NP ;
    Kind = CN ;
    Quality = AP ;
    Person = NP ;
    Act = V2;
    Food = CN ;
  lin
    Pred item quality = mkCl item quality ;
    This kind = mkNP this_Det kind ;
    That kind = mkNP that_Det kind ;
    These kind = mkNP these_Det kind ;
    Those kind = mkNP those_Det kind ;
    Mod quality kind = mkCN quality kind ;
    Very quality = mkAP very_AdA quality ;

    Fresh = mkAP fresh_A ;
    Warm = mkAP warm_A ;
    Italian = mkAP italian_A ;
    Expensive = mkAP expensive_A ;
    Delicious = mkAP delicious_A ;
    Boring = mkAP boring_A ;
    She = she_NP;
    He = he_NP;
    They = they_NP;

    Wine = mkCN wine_N ;
    Pizza = mkCN pizza_N ;

    Eat = eat_V ;
    Drink = drink_V ;

    FoodAct _ act food = mkCl (mkVP act (mkNP food)) ;
    FoodKind kind = kind ;
    TheyEatsFood _ person act food = mkCl person (mkVP act (mkNP food));
}
