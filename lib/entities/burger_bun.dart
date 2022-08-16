import 'package:thesis_s2022/entities/burger_item.dart';

class BurgerBun {
  final BurgerItem topBun;
  final BurgerItem bottomBun;
  final String label;

  const BurgerBun(this.topBun, this.bottomBun, this.label);
  BurgerBun.defaultBurgerBun()
      : this(BurgerItem.defaultItem(), BurgerItem.defaultItem(), 'Normaali');
}
