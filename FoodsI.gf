    -- syntax and lexfoods are interface modules
    --the functor opens interfaces
    
    --functor instantiation
incomplete concrete FoodsI of Foodsres = open Syntax, LexFoods in {
    lincat
        Comment = Cl ;
        Item = NP ;
        Kind = CN ;
        Quality = AP ;
        Person = NP ;
        Act = V2;
    lin
        Pred item quality = mkCl item quality ;
        This kind = mkNP this_Det kind ;
        That kind = mkNP that_Det kind ;
        These kind = mkNP these_Det kind ;
        Those kind = mkNP those_Det kind ;
        Mod quality kind = mkCN quality kind ;
        Very quality = mkAP very_AdA quality ;
        EatsFood person act item = mkCl person Eat (mkNP item);
  
        Wine = mkCN wine_N ;
        Pizza = mkCN pizza_N ;
        Cheese = mkCN cheese_N ;
        Fish = mkCN fish_N ;
        Salad = mkCN salad_N ;
        Cake = mkCN cake_N ;
        Fresh = mkAP fresh_A ;
        Warm = mkAP warm_A ;
        Italian = mkAP italian_A ;
        Expensive = mkAP expensive_A ;
        Delicious = mkAP delicious_A ;
        Boring = mkAP boring_A ;
        She = she_NP;
        He = he_NP;
        They = they_NP;
        Eat = mkVP eat_V;
    
    }