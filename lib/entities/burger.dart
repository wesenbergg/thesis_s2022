import 'package:thesis_s2022/entities/burger_item.dart';
import 'package:thesis_s2022/enums/buns.dart';
import 'package:thesis_s2022/enums/patties.dart';

class Burger {
  Patties patty;
  Buns bun;
  Map<String, BurgerItem> sauces = {};
  Map<String, BurgerItem> vegetables = {};

  Burger({this.bun = Buns.normal, this.patty = Patties.beef});

  List<BurgerItem> build() {
    return [
      bun.item.topBun,
      ...sauces.values,
      ...vegetables.values,
      patty.item,
      bun.item.bottomBun
    ];
  }
}
