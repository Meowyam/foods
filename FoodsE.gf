concrete FoodsE of Foods = {
    lincat
        Comment = {s: Str}; 
        Item = LinItem; --{s : Str; n : Number}; 
        Kind = LinKind; --  {s : Str}; 
        Quality =  LinQuality; 
    lin
        -- : Item -> Quality -> Comment; 
        Pred item quality = {
            s = item.s ++ copula ! item.n ++ quality.s
        };
       -- : Kind -> Item
        This = det "this" Sg k ;
        That = det "that" Sg k ; -- { s = "that" ++ k.s ! Sg; n = Sg};
        These = det "these" Pl k ; -- { s = "these" ++ k.s ! Pl; n = Pl};
        Those = det "those" Pl k ; -- { s = "those" ++ k.s ! Pl; n = Pl};
        --: Mod: Quality -> Kind; 
        Mod q k = {
            s = table {num => q.s ++ k.s ! num }
        };
        --{s =  q.s ++ k.s };
        --: Very: Quality -> Quality;
        Very q = {
            s = "very" ++ q.s;
        };
        Pizza = regKind "pizza";
        Wine = regKind "wine";
        Cheese = regKind "cheese";
        Fish = regKind "fish";
        Salad = regKind "salad";
        Cake = regKind "cake";
        Fresh = mkQuality "fresh";
        Warm = mkQuality "warm";
        Italian = mkQuality "Italian";
        Expensive = mkQuality "expensive"; 
        Boring = mkQuality "boring";
        Delicious = mkQuality "delicious";
        Good = mkQuality "good";
    param
        Number = Sg | Pl ;
    oper
        copula  : Number => Str; 
        copula = table {
            Sg => "is";
            Pl => "are"
            };
        LinItem : Type = {s :Str; n : Number};
        det     :  Number -> Str -> LinKind -> LinItem =
        \n,d,kind -> {
            s = d ++ kind.s ! n ;
            n = n;
        };
        LinKind : Type = { s: Number => Str};
        mkKind : Str -> Str -> LinKind ;
        mkKind x y = {
            s = table {
                Sg => x;
                Pl => y
            }
        } ;
        regKind : Str -> LinKind = \w ->
        let
            ws : Str = case w of {
                "fish" => w;
                _      => w + "s"
            }
        in
        mkKind w ws;
        LinQuality : Type = {s : Str} ;
        mkQuality : Str -> LinQuality;
        mkQuality str = {s = str};
}
