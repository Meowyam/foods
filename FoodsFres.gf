concrete FoodsFres of Foods = open SyntaxFre, ParadigmsFre in {
    lincat
        Comment = Cl; 
        Item = NP; --{s : Str; n : Number; g: Gender}; 
        Kind = CN; --  {s : Str}; 
        Quality =  AP; 
    lin
        -- : Item -> Quality -> Comment; 
        Pred item quality = mkCl item quality;
        -- : Kind -> Item
        -- mkNP "this cheese"
        This kind = mkNP this_Det kind; 
        That kind = mkNP that_Det kind ;
        These kind = mkNP these_Det kind ;
        Those kind = mkNP those_Det kind ; 

        --: Mod: Quality -> Kind -> Kind; 
        Mod quality kind = mkCN quality kind ;
        Very quality = mkAP very_AdA quality ;

        Pizza = mkCN (mkN "pizza" feminine);
        Cheese = mkCN (mkN "fromage" masculine);
        Wine = mkCN (mkN "vin" masculine);
        Fish = mkCN (mkN "poisson" masculine);
        Salad = mkCN (mkN "salade" feminine);
        Cake = mkCN (mkN "gâteau" masculine);
        Fresh = mkAP (mkA "frais");
        Warm = mkAP (mkA "chaud");
        Italian = mkAP (mkA "Italien");
        Expensive = mkAP (mkA "cher"); 
        Boring = mkAP (mkA "ennuyeux");
        Delicious = mkAP (mkA "delicieux");
    }