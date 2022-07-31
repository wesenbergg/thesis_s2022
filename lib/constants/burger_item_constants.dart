import 'package:thesis_s2022/entities/burger_bun.dart';
import 'package:thesis_s2022/entities/burger_item.dart';

const List<BurgerItem> patties = [
  BurgerItem("images/beef.png", "Naudanlihapihvi", 1.0)
];

const normalTopBun = BurgerItem("images/bun-top.png", "Naudanlihapihvi", 1.0);
const normalBottomBun =
    BurgerItem("images/bun-bottom.png", "Naudanlihapihvi", 1.0);
const roastBottomBun =
    BurgerItem("images/bun-bottom-roast.png", "Naudanlihapihvi", 1.0);
const normalBurgerBun = BurgerBun(normalTopBun, normalBottomBun);
const roastBurgerBun = BurgerBun(normalTopBun, roastBottomBun);

const List<BurgerItem> buns = [
  BurgerItem("images/bun-top.png", "Naudanlihapihvi", 1.0),
  BurgerItem("images/bun-bottom.png", "Naudanlihapihvi", 1.0)
];

const bCheese = BurgerItem("images/cheese.png", "Juusto", 0.50);
const bKetchup = BurgerItem("images/ketchup.png", "Ketsuppi", 0.10);
const bMustard = BurgerItem("images/mustard.png", "Sinappi", 0.10);
const bTomato = BurgerItem("images/tomato.png", "Tomaatti", 0.50);
const bPickles = BurgerItem("images/pickles.png", "Suolakurkku", 0.20);
const bSalad = BurgerItem("images/salad.png", "Salaatti", 0.20);
const bRedOnion = BurgerItem("images/red-onion.png", "Punasipuli", 0.10);
const List<BurgerItem> fillList = [bKetchup, bKetchup];
