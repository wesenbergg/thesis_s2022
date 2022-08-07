import 'package:thesis_s2022/constants/burger_item_constants.dart';
import 'package:thesis_s2022/entities/burger_item.dart';

enum Sauces { ketchup, mustard }

extension ExtSauces on Sauces {
  BurgerItem get item {
    switch (this) {
      case Sauces.ketchup:
        return bKetchup;
      case Sauces.mustard:
        return bMustard;
      default:
        return BurgerItem.defaultItem();
    }
  }
}
