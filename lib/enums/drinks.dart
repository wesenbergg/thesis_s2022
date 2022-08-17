import 'package:thesis_s2022/constants/burger_item_constants.dart';
import 'package:thesis_s2022/entities/burger_item.dart';

enum Drinks { softDrink, milkshake, juice, slush }

extension ExtDrinks on Drinks {
  BurgerItem get item {
    switch (this) {
      case Drinks.softDrink:
        return dSoftDrink;
      case Drinks.milkshake:
        return dMilkshake;
      case Drinks.juice:
        return dJuice;
      case Drinks.slush:
        return dSlush;
      default:
        return BurgerItem.defaultItem();
    }
  }

  List<BurgerItem> burgerItems() {
    return List.from(Drinks.values);
  }
}
