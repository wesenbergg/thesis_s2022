import 'package:thesis_s2022/entities/burger_item.dart';
import 'package:thesis_s2022/enums/buns.dart';
import 'package:thesis_s2022/enums/patties.dart';
import 'package:thesis_s2022/enums/sauces.dart';
import 'package:thesis_s2022/enums/vegetables.dart';

class Burger {
  Patties patty;
  Buns bun;
  List<Sauces> sauces = [];
  List<Vegetables> vegetables = [];

  Burger({this.bun = Buns.normal, this.patty = Patties.beef});

  List<BurgerItem> build() {
    return [
      bun.item.topBun,
      ...sauces.map((e) => e.item),
      ...vegetables.map((e) => e.item),
      patty.item,
      bun.item.bottomBun
    ];
  }
}
