import 'package:thesis_s2022/entities/burger_item.dart';

enum Patties { beef, chicken }

extension ExtPatties on Patties {
  BurgerItem get item {
    switch (this) {
      case Patties.beef:
        return BurgerItem("images/beef.png", "Naudanlihapihvi", 1.0);
      case Patties.chicken:
        return BurgerItem("images/beef.png", "Naudanlihapihvi", 1.0);
      default:
        return BurgerItem.defaultItem();
    }
  }
}
