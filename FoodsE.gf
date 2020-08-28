concrete FoodsE of Foods = {
    lincat
        Comment = {s : Str}; 
        Item = LinItem; --{s : Str; n : Number}; 
        Kind = LinKind; --  {s : Str}; 
        Quality =  LinQuality; 
    lin
        -- : Item -> Quality -> Comment; 
        Pred item quality = {
            s = item.s ++ copula ! item.n ++ quality.s
            };
        -- : Kind -> Item
        This k = det "this" Sg k; 
        That k = det "that" Sg k; -- { s = "that" ++ k.s ! Sg; n = Sg};
        These k = det "these" Pl k; -- { s = "these" ++ k.s ! Pl; n = Pl};
        Those k = det "those" Pl k; -- { s = "those" ++ k.s ! Pl; n = Pl};
        --: Mod: Quality -> Kind -> Kind; 
        Mod q k = {
            s = table {
                num => q.s ++ k.s ! num}
            };
           
            --{s =  q.s ++ k.s };
        Pizza = mkKind "pizza";
        Cheese = mkKind "cheese";
        Wine = mkKind "wine";
        Fish = mkKind "fish";
        Fresh = mkQuality "fresh";
        Warm = mkQuality "warm";
        Italian = mkQuality "Italian";
        Expensive = mkQuality "expensive"; 
        Boring = mkQuality "boring";
        Delicious = mkQuality "delicious";
    param
        Number = Sg | Pl ;
    oper
        copula  : Number => Str; 
        copula = table {
            Sg => "is";
            Pl => "are"
            };
        LinItem : Type = {s :Str; n : Number};
        det     :  Str -> Number -> LinKind -> LinItem;
        det this sg kind = {
            s = this ++ kind.s !sg ; n = sg
        };
        LinKind : Type = { s: Number => Str};
        mkKind : Str-> LinKind ;
        mkKind str = {
            s = table {
                Sg => str;
                Pl => str +"s"}
                } ;
        LinQuality : Type = {s : Str};
        mkQuality : Str -> LinQuality;
        mkQuality str = {s = str};
}
