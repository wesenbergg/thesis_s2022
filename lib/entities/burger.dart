import 'package:thesis_s2022/entities/burger_item.dart';
import 'package:thesis_s2022/enums/buns.dart';
import 'package:thesis_s2022/enums/patties.dart';
import 'package:thesis_s2022/enums/sauces.dart';

class Burger {
  Patties patty;
  Buns bun;
  List<Sauces> sauces;

  Burger(
      {this.bun = Buns.normal,
      this.patty = Patties.beef,
      this.sauces = const []});

  List<BurgerItem> build() {
    return [bun.item.topBun, patty.item, bun.item.bottomBun];
  }
}
