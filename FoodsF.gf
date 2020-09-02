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
        Pizza = regKind "pizza" Fem;
        Cheese = regKind "fromage" Masc;
        Wine = regKind "vin" Masc;
        Fish = regKind "poisson" Masc;
        Salad = regKind "salade" Fem;
        Cake = regKind "gâteau" Masc;
        Fresh = regQuality "frais";
        Warm = regQuality "chaud";
        Italian = regQuality "Italien";
        Expensive = regQuality "cher"; 
        Boring = regQuality "ennuyeux";
        Delicious = regQuality "delicieux";
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
        mkKind : Str-> Str -> Gender -> LinKind;
        mkKind x y g = {
            s = table {
                Sg => x;
                Pl => y
            };
            g = g
        } ;
        regKind : Str -> Gender -> LinKind = \w ->
        let
            ws : Str = case w of {
                _ + ("eau") => w + "x";
                _           => w + "s"
            }
        in
        mkKind w ws;

        LinQuality : Type = {s : Gender => Number => Str};
        mkQuality : Str -> Str -> LinQuality;
        mkQuality x y = {
            s = table {
                Masc => table {
                    Sg => x;
                    Pl => case last x of{
                        "x" => x;
                        _   => x + "s"
                    } 
                } ;
                Fem => table {
                    Sg => y;
                    Pl => y + "s"
                }
            }
        };
        regQuality: Str -> LinQuality = \w ->
        let
            ws : Str = case w of {
                _ + ("eux") => init w + "se";
                _ + ("ais") => init w + "che";
                _ + ("en")  => w + "ne";
                _           => w + "e"
            }
        in
        mkQuality w ws;
}
