import 'package:thesis_s2022/constants/burger_item_constants.dart';
import 'package:thesis_s2022/entities/burger_bun.dart';

enum Buns {
  normal,
  roast,
  sesame,
  sesameRoast,
  black,
  blackRoast,
  sandwich,
  sandwichRoast
}

extension ExtBuns on Buns {
  BurgerBun get item {
    switch (this) {
      case Buns.normal:
        return normalBurgerBun;
      case Buns.roast:
        return roastBurgerBun;
      case Buns.sesame:
        return normalSesameBurgerBun;
      case Buns.sesameRoast:
        return roastSesameBurgerBun;
      case Buns.black:
        return normalBurgerBlackBun;
      case Buns.blackRoast:
        return roastBurgerBlackBun;
      case Buns.sandwich:
        return normalBurgerSandwich;
      case Buns.sandwichRoast:
        return roastBurgerSandwich;
      default:
        return BurgerBun.defaultBurgerBun();
    }
  }
}
