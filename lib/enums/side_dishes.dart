import 'package:thesis_s2022/constants/burger_item_constants.dart';
import 'package:thesis_s2022/entities/burger_item.dart';

enum SideDishes { fries, salad }

extension ExtDrinks on SideDishes {
  BurgerItem get item {
    switch (this) {
      case SideDishes.fries:
        return sFries;
      case SideDishes.salad:
        return sSalad;
      default:
        return BurgerItem.defaultItem();
    }
  }
}
