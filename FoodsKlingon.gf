concrete FoodsKlingon of Foods = {
  lincat
    Comment = {s : Str} ;
    Item = LinItem; -- {s : Str; n : Number} ;
    Kind = LinKind; -- {s : Str};
    Quality = LinQuality ;

  lin
    -- : Item -> Quality -> Comment ;
    Pred i q = {
      s = i.s ++ copula ! i.n ++ q.s
    } ;
    -- : Kind -> Item ;
    This k = det "ghu'vam" Sg k ;
    That k = det "net" Sg k ;
    These k = det "qetlh" Pl k ;
    Those k = det "nuv" Pl k ;

    -- : Quality -> Kind -> Kind ;
    Mod q k = {
      s = table {
        num => q.s ++ k.s ! num }
    } ; 

    Very q = {
       s = "'el" ++ q.s;
    };


    Pizza = mkKind "pltSa' chab" ;
    Cheese = mkKind "nlm wlb ngogh" ;
    Wine = mkKind "hlq" ;
    Fish = mkKind "ghotl'" ;

    Fresh = mkQuality "ghoQ" ;
    Warm = mkQuality "veS" ;
    Italian = mkQuality "tlhIngan" ;
    Expensive = mkQuality "wagh" ;
    Boring = mkQuality "Dal" ;
    Delicious = mkQuality "Soj'eyqu'" ;

  param
    Number = Sg | Pl;

  oper
    copula : Number => Str ;
    copula = table {
      Sg => "ghaH" ;
      Pl => "maghaH"
    } ;

    LinItem : Type = {s : Str; n : Number};
    -- determiner

    det     :  Number -> Str -> LinKind -> LinItem =
    \n,d,kind -> {
        s = d ++ kind.s ! n ;
        n = n;
    };
    LinKind : Type = {s : Number => Str};
    mkKind : Str -> LinKind ;
    mkKind str = {
      s = table {
        Sg => str ;
        Pl => str + "mey"
      }
    } ;
   
    LinQuality : Type = {s: Str} ;
    mkQuality : Str -> LinQuality ;
    mkQuality str = {s = str} ;
}
