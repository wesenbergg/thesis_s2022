import 'package:flutter/material.dart';
import 'package:thesis_s2022/constants/style_constants.dart';
import 'package:thesis_s2022/enums/buns.dart';
import 'package:thesis_s2022/states/burger_state.dart';
import 'package:provider/provider.dart';

class BunCardList extends StatefulWidget {
  const BunCardList({
    Key? key,
  }) : super(key: key);

  @override
  State<BunCardList> createState() => _BunCardListState();
}

class _BunCardListState extends State<BunCardList> {
  int index = 0;
  bool flame = false;
  final int lastBurgerBunIndex = Buns.values.length - 1;
  final int firstBurgerBunIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Buns.values[index].item.label.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    index = (index <= firstBurgerBunIndex)
                        ? lastBurgerBunIndex
                        : index - 1;
                    context.read<BurgerState>().replaceBun(Buns.values[index]);
                  });
                },
                icon: const Icon(Icons.navigate_before)),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: CircleAvatar(
                maxRadius: 100,
                backgroundColor: primary,
                child: Image.asset(Buns.values[index].item.bottomBun.uri),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(
                  () {
                    index = (index >= lastBurgerBunIndex)
                        ? firstBurgerBunIndex
                        : index + 1;
                    context.read<BurgerState>().replaceBun(Buns.values[index]);
                  },
                );
              },
              icon: const Icon(Icons.navigate_next),
            )
          ],
        ),
      ],
    );
  }
}
