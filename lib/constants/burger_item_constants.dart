import 'package:thesis_s2022/entities/burger_bun.dart';
import 'package:thesis_s2022/entities/burger_item.dart';

// normal and roast
BurgerItem normalTopBun =
    BurgerItem("images/bun-top.png", "Briossisämpylä", 1.0);
BurgerItem normalBottomBun =
    BurgerItem("images/bun-bottom.png", "Normaali", 1.0);
BurgerItem sesameTopBun =
    BurgerItem("images/bun-top-sesame.png", "Briossisämpylä", 1.0);
BurgerItem roastBottomBun =
    BurgerItem("images/bun-bottom-roast.png", "Paahdettu", 1.0);
BurgerBun normalBurgerBun =
    BurgerBun(normalTopBun, normalBottomBun, "Briossisämpylä");
BurgerBun roastBurgerBun =
    BurgerBun(normalTopBun, roastBottomBun, "Paahdettu Briossisämpylä");
BurgerBun normalSesameBurgerBun =
    BurgerBun(sesameTopBun, normalBottomBun, "Sesamisämpylä");
BurgerBun roastSesameBurgerBun =
    BurgerBun(sesameTopBun, roastBottomBun, "Paahdettu Sesamisämpylä");

// black normal and roast
BurgerItem normalTopBlackBun =
    BurgerItem("images/bun-top-black.png", "Briossisämpylä", 1.0);
BurgerItem normalBottomBlackBun =
    BurgerItem("images/bun-bottom-black.png", "Normaali", 1.0);
BurgerItem roastBottomBlackBun =
    BurgerItem("images/bun-bottom-black-roast.png", "Paahdettu", 1.0);
BurgerBun normalBurgerBlackBun =
    BurgerBun(normalTopBlackBun, normalBottomBlackBun, "Paholaisleipä");
BurgerBun roastBurgerBlackBun = BurgerBun(
    normalTopBlackBun, roastBottomBlackBun, "Paahdettu paholaisleipä");

// sandwich normal and roast
BurgerItem normalTopSandwich =
    BurgerItem("images/sandwich-top.png", "Briossisämpylä", 1.0);
BurgerItem normalBottomSandwich =
    BurgerItem("images/sandwich-bottom.png", "Normaali", 1.0);
BurgerItem roastTopSandwich =
    BurgerItem("images/sandwich-top-roast.png", "Paahdettu", 1.0);
BurgerItem roastBottomSandwich =
    BurgerItem("images/sandwich-bottom-roast.png", "Paahdettu", 1.0);
BurgerBun normalBurgerSandwich =
    BurgerBun(normalTopSandwich, normalBottomSandwich, "Sandwich");
BurgerBun roastBurgerSandwich =
    BurgerBun(roastTopSandwich, roastBottomSandwich, "Paahdettu Sandwich");

// fills
BurgerItem bCheese = BurgerItem("images/cheese.png", "Juusto", 0.50);
BurgerItem bKetchup = BurgerItem("images/ketchup.png", "Ketsuppi", 0.10);
BurgerItem bMustard = BurgerItem("images/mustard.png", "Sinappi", 0.10);
BurgerItem bTomato = BurgerItem("images/tomato.png", "Tomaatti", 0.50);
BurgerItem bPickles = BurgerItem("images/pickles.png", "Suolakurkku", 0.20);
BurgerItem bSalad = BurgerItem("images/lettuce.png", "Salaatti", 0.20);
BurgerItem bRedOnion = BurgerItem("images/red-onion.png", "Punasipuli", 0.10);

// meal
BurgerItem sFries = BurgerItem("images/fries.png", "Ranet", 0.10);
BurgerItem sSalad = BurgerItem("images/salad.png", "Salaatti", 0.10);
BurgerItem dSlush = BurgerItem("images/slush.png", "Hilejuoma", 0.10);
BurgerItem dJuice = BurgerItem("images/juice.png", "Mehu", 0.10);
BurgerItem dSoftDrink = BurgerItem("images/lemonade.png", "Limu", 0.10);
BurgerItem dMilkshake = BurgerItem("images/milkshake.png", "Limu", 0.10);
