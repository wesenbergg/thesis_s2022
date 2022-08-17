import 'package:thesis_s2022/entities/burger_item.dart';

class Meal {
  final BurgerItem sideDish;
  final BurgerItem drink;

  const Meal(this.sideDish, this.drink);
  Meal.defaultMeal() : this(BurgerItem.defaultItem(), BurgerItem.defaultItem());
}
