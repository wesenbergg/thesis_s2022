import 'package:flutter/material.dart';
import 'package:thesis_s2022/constants/style_constants.dart';
import 'package:thesis_s2022/enums/vegetables.dart';
import 'package:thesis_s2022/states/burger_state.dart';
import 'package:provider/provider.dart';

class VegetableCardList extends StatelessWidget {
  const VegetableCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: sV2,
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: sA0,
        physics: const ClampingScrollPhysics(),
        itemCount: Vegetables.values.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: sA0,
            elevation: 0,
            child: GridTile(
              header: Text(
                Vegetables.values[index].item.label.toUpperCase(),
                textAlign: TextAlign.center,
                style: leadTextStyle,
              ),
              footer: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => context.read<BurgerState>().addVegetable(
                        Vegetables.values[index],
                        amount: Vegetables.values[index].item.amount - 1),
                    icon: removeIcon,
                  ),
                  Padding(
                    padding: sA2,
                    child: Text("${Vegetables.values[index].item.amount}"),
                  ),
                  IconButton(
                    onPressed: () => context.read<BurgerState>().addVegetable(
                        Vegetables.values[index],
                        amount: Vegetables.values[index].item.amount + 1),
                    icon: addIcon,
                  )
                ],
              ),
              child: Padding(
                padding: sA6,
                child: CircleAvatar(
                  maxRadius: 100,
                  backgroundColor: primary,
                  child: Image.asset(Vegetables.values[index].item.uri),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
