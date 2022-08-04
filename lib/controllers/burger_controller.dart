import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thesis_s2022/entities/burger_item.dart';
import 'package:thesis_s2022/states/burger_state.dart';

class BurgerController {
  final double _imageLayerOffset;

  BurgerController(this._imageLayerOffset);

  List<Widget> showList(BuildContext context) {
    List<Widget> l = [];
    List<BurgerItem> b = context.watch<BurgerState>().getBuildedBurger();
    for (var i = 0; i < b.length; i++) {
      l = [...l, customImage(b[i].uri, order: i)];
    }
    return l.reversed.toList();
  }

  Widget customImage(path, {double? width = 200, int? order = 0}) => Positioned(
        top: _imageLayerOffset * order!.toDouble(),
        child: Image.asset(path, width: width),
      );
}
