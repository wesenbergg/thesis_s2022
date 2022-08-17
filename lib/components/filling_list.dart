import 'package:flutter/material.dart';
import 'package:thesis_s2022/components/sauce_card_list.dart';
import 'package:thesis_s2022/components/vegetable_card_list.dart';

class FillingList extends StatelessWidget {
  const FillingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        VegetableCardList(),
        SauceCardList(),
      ],
    );
  }
}
