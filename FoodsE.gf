concrete FoodsE of Foods = open Prelude in {
    lincat
        Comment = SS; 
        Item = LinItem; --{s : Str; n : Number}; 
        Kind = LinKind; --  {s : Str}; 
        Quality =  LinQuality; 
    lin
        -- : Item -> Quality -> Comment; 
        Pred item quality =
            ss (item.s ++ copula ! item.n ++ quality.s);
        -- : Kind -> Item
        This = det Sg "this"; 
        That = det Sg "that"; -- { s = "that" ++ k.s ! Sg; n = Sg};
        These = det Pl "these"; -- { s = "these" ++ k.s ! Pl; n = Pl};
        Those = det Pl "those"; -- { s = "those" ++ k.s ! Pl; n = Pl};
        --: Mod: Quality -> Kind; 
        Mod q k = {
            s = table {num => k.s ! num ++ q.s}
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
