import 'package:flutter/foundation.dart';
import 'package:thesis_s2022/entities/burger.dart';
import 'package:thesis_s2022/entities/burger_item.dart';
import 'package:thesis_s2022/enums/sauces.dart';
import 'package:thesis_s2022/enums/vegetables.dart';

class BurgerState with ChangeNotifier, DiagnosticableTreeMixin {
  final Burger _burger = Burger();

  void addVegetable(Vegetables vege) {
    _burger.vegetables.add(vege);
    notifyListeners();
  }

  void addSauce(Sauces sauce) {
    _burger.sauces.add(sauce);
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
