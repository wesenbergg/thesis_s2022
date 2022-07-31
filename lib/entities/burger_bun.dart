import 'package:thesis_s2022/entities/burger_item.dart';

class BurgerBun {
  final BurgerItem topBun;
  final BurgerItem bottomBun;

  const BurgerBun(this.topBun, this.bottomBun);
  const BurgerBun.defaultBurgerBun()
      : this(const BurgerItem.defaultItem(), const BurgerItem.defaultItem());
}
