concrete FoodsF of Foods = open Prelude in {
    lincat
        Comment = SS; 
        Item = LinItem; --{s : Str; n : Number; g: Gender}; 
        Kind = LinKind; --  {s : Str}; 
        Quality =  LinQuality; 
    lin
        -- : Item -> Quality -> Comment; 
        Pred item quality =
            ss (item.s ++ copula ! item.n ++ quality.s ! item.g ! item.n);
        -- : Kind -> Item
        This = det Sg "ce" "cette"; 
        That = det Sg "ce" "cette"; -- { s = "that" ++ k.s ! Sg; n = Sg};
        These = det Pl "ceux-ci" "celles-ci"; -- { s = "these" ++ k.s ! Pl; n = Pl};
        Those = det Pl "ceux" "celles"; -- { s = "those" ++ k.s ! Pl; n = Pl};
        --: Mod: Quality -> Kind -> Kind; 
        Mod q k = {
              s = table {num => k.s ! num ++ q.s ! k.g ! num} ;
              g = k.g
            } ; 
            --{s =  q.s ++ k.s };
        Pizza = mkKind "pizza" Fem;
        Cheese = mkKind "fromage" Masc;
        Wine = mkKind "vin" Masc;
        Fish = mkKind "poisson" Masc;
        Salad = mkKind "salade" Fem;
        Fresh = mkQuality "frais";
        Warm = mkQuality "chaud";
        Italian = mkQuality "Italien";
        Expensive = mkQuality "cher"; 
        Boring = mkQuality "ennuyeux";
        Delicious = mkQuality "delicieux";
    param
        Number = Sg | Pl ;
        Gender = Fem | Masc ;
    oper
        copula  : Number => Str; 
        copula = table {
            Sg => "est";
            Pl => "sont"
            };
        LinItem : Type = {s :Str; g : Gender; n: Number};
        det     : Number -> Str -> Str -> LinKind -> LinItem =
        \n,m,f,kind -> {
            s = case kind.g of {Masc => m; Fem => f} ++ kind.s ! n ;
            g = kind.g;
            n = n
        };
        LinKind : Type = { s: Number => Str; g : Gender };
        mkKind : Str-> Gender -> LinKind;
        mkKind str g = {
            s = table {
                Sg => str;
                Pl => str +"s"
            };
            g = g
        } ;
        LinQuality : Type = {s : Gender => Number => Str};
        mkQuality : Str -> LinQuality;
        mkQuality str = {
            s = table {
                Masc => table {
                    Sg => str;
                    Pl => str + "s"
                } ;
                Fem => table {
                    Sg => str + "e";
                    Pl => str + "es"
                }
            }
        };
}
