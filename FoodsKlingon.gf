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
        num => q.s ++ k.s ! num}
    } ; 

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
    det : Str -> Number -> LinKind -> LinItem;
    det this sg kind = {
      s = this ++ kind.s !sg ; n = sg
    } ;
    
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
