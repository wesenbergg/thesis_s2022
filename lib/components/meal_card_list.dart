import 'package:flutter/material.dart';
import 'package:thesis_s2022/constants/style_constants.dart';
import 'package:thesis_s2022/entities/burger_item.dart';
import 'package:thesis_s2022/enums/drinks.dart';
import 'package:thesis_s2022/enums/side_dishes.dart';

class MealCardList extends StatelessWidget {
  const MealCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      shrinkWrap: true,
      children: [
        MealColumn(
          mealItems: List.from(Drinks.values.map((e) => e.item)),
        ),
        MealColumn(
          mealItems: List.from(SideDishes.values.map((e) => e.item)),
        ),
      ],
    );
  }
}

class MealColumn extends StatelessWidget {
  final index = 0;
  final List<BurgerItem> mealItems;

  const MealColumn({super.key, required this.mealItems});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(offset: Offset(1, 1), color: Colors.black12)],
        // border: Border.all(color: Colors.black12),
        borderRadius: BorderRadiusDirectional.all(Radius.circular(4)),
      ),
      child: Stack(
        children: [
          IconButton(onPressed: () {}, icon: closeIcon),
          Padding(
            padding: sT2,
            child: GridTile(
              header: Text(
                mealItems[index].label.toUpperCase(),
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              footer: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.navigate_before),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.navigate_next),
                  )
                ],
              ),
              child: Padding(
                padding: sA6,
                child: CircleAvatar(
                  backgroundColor: primary,
                  child: Image.asset(mealItems[index].uri),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
