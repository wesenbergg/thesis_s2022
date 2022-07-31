import 'package:flutter/material.dart';
import 'package:thesis_s2022/entities/burger.dart';
import 'package:thesis_s2022/entities/burger_item.dart';

class BurgerController {
  final double _imageLayerOffset;

  BurgerController(this._imageLayerOffset);

  List<Widget> showList() {
    List<Widget> l = [];
    List<BurgerItem> b = Burger().build();
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
