instance LexFoodsEres of LexFoods = open SyntaxEng, ParadigmsEng, LexiconEng in {
  oper
    pizza_N = mkN "pizza";
    wine_N = mkN "wine";
    cheese_N = regN "cheese";
    fish_N = mk2N "fish" "fish";
    salad_N = mkN "salad";
    cake_N = mkN "cake";

    fresh_A = mkA "fresh";
    warm_A = mkA "warm";
    italian_A = mkA "Italian";
    expensive_A = mkA "expensive"; 
    boring_A = mkA "boring";
    delicious_A = mkA "delicious";

    eat_V = dirV2 (irregV "eat" "ate" "eaten");
    drink_V = dirV2 (irregV "drink" "drank" "drunk");
}
