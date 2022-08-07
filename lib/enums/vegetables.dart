import 'package:thesis_s2022/constants/burger_item_constants.dart';
import 'package:thesis_s2022/entities/burger_item.dart';

enum Vegetables { salad, tomato, redOnion, pickles }

extension ExtVegetables on Vegetables {
  BurgerItem get item {
    switch (this) {
      case Vegetables.tomato:
        return bTomato;
      case Vegetables.pickles:
        return bPickles;
      case Vegetables.redOnion:
        return bRedOnion;
      case Vegetables.salad:
        return bSalad;
      default:
        return BurgerItem.defaultItem();
    }
  }
}
