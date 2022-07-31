import 'package:thesis_s2022/constants/burger_item_constants.dart';
import 'package:thesis_s2022/entities/burger_bun.dart';

enum Buns { normal, roast, black, blackRoast, sandwich, sandwichRoast }

extension ExtBuns on Buns {
  BurgerBun get item {
    switch (this) {
      case Buns.normal:
        return normalBurgerBun;
      case Buns.roast:
        return normalBurgerBun;
      default:
        return const BurgerBun.defaultBurgerBun();
    }
  }
}
