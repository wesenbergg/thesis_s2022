import 'package:thesis_s2022/entities/burger_bun.dart';
import 'package:thesis_s2022/entities/burger_item.dart';

List<BurgerItem> patties = [
  BurgerItem("images/beef.png", "Naudanlihapihvi", 1.0)
];

BurgerItem normalTopBun =
    BurgerItem("images/bun-top.png", "Naudanlihapihvi", 1.0);
BurgerItem normalBottomBun =
    BurgerItem("images/bun-bottom.png", "Naudanlihapihvi", 1.0);
BurgerItem roastBottomBun =
    BurgerItem("images/bun-bottom-roast.png", "Naudanlihapihvi", 1.0);
BurgerBun normalBurgerBun = BurgerBun(normalTopBun, normalBottomBun);
BurgerBun roastBurgerBun = BurgerBun(normalTopBun, roastBottomBun);

List<BurgerItem> buns = [
  BurgerItem("images/bun-top.png", "Naudanlihapihvi", 1.0),
  BurgerItem("images/bun-bottom.png", "Naudanlihapihvi", 1.0)
];

BurgerItem bCheese = BurgerItem("images/cheese.png", "Juusto", 0.50);
BurgerItem bKetchup = BurgerItem("images/ketchup.png", "Ketsuppi", 0.10);
BurgerItem bMustard = BurgerItem("images/mustard.png", "Sinappi", 0.10);
BurgerItem bTomato = BurgerItem("images/tomato.png", "Tomaatti", 0.50);
BurgerItem bPickles = BurgerItem("images/pickles.png", "Suolakurkku", 0.20);
BurgerItem bSalad = BurgerItem("images/salad.png", "Salaatti", 0.20);
BurgerItem bRedOnion = BurgerItem("images/red-onion.png", "Punasipuli", 0.10);
List<BurgerItem> fillList = [bKetchup, bKetchup];
