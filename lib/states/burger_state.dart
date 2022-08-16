import 'package:flutter/foundation.dart';
import 'package:thesis_s2022/entities/burger.dart';
import 'package:thesis_s2022/entities/burger_item.dart';
import 'package:thesis_s2022/enums/buns.dart';
import 'package:thesis_s2022/enums/sauces.dart';
import 'package:thesis_s2022/enums/vegetables.dart';

class BurgerState with ChangeNotifier, DiagnosticableTreeMixin {
  final Burger _burger = Burger();

  void addVegetable(Vegetables vege, {int amount = 0}) {
    BurgerItem item =
        _burger.vegetables.putIfAbsent(vege.name, () => vege.item);
    item.amount = amount;
    notifyListeners();
  }

  void addSauce(Sauces sauce, {int amount = 0}) {
    _burger.sauces.putIfAbsent(sauce.name, () => sauce.item);
    notifyListeners();
  }

  void replaceBun(Buns bun) {
    _burger.bun = bun;
    notifyListeners();
  }

  Buns getBun() {
    return _burger.bun;
  }

  List<BurgerItem> getBuildedBurger() {
    return _burger.build();
  }

  /// Makes `Burger` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('burger', _burger));
  }
}
