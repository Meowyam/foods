concrete FoodsEres of Foods = open SyntaxEng, ParadigmsEng in {
    lincat
        Comment = Cl; 
        Item = NP;
        Kind = CN;
        Quality = AP; 
    lin
        -- : Item -> Quality -> Comment; 
        Pred item quality = mkCl item quality ;

        -- : Kind -> Item
        This kind = mkNP this_Det kind; 
        That kind = mkNP that_Det kind ;
        These kind = mkNP these_Det kind ;
        Those kind = mkNP those_Det kind ; 

        --: Mod: Quality -> Kind; 
        Mod quality kind = mkCN quality kind ;
        Very quality = mkAP very_AdA quality ;

        Pizza = mkCN (mkN "pizza");
        Wine = mkCN (mkN "wine");
        Cheese = mkCN (mkN "cheese");
        Fish = mkCN (mkN "fish");
        Salad = mkCN (mkN "salad");
        Cake = mkCN (mkN "cake");

        Fresh = mkAP (mkA "fresh");
        Warm = mkAP (mkA "warm");
        Italian = mkAP (mkA "Italian");
        Expensive = mkAP (mkA "expensive"); 
        Boring = mkAP (mkA "boring");
        Delicious = mkAP (mkA "delicious");
}
