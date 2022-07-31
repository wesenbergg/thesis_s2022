import 'package:flutter/material.dart';
import 'package:thesis_s2022/components/fill_draggable_sheet.dart';
import 'package:thesis_s2022/controllers/burger_controller.dart';
import 'package:thesis_s2022/entities/burger_item.dart';

class BurgerBuilderScreen extends StatefulWidget {
  const BurgerBuilderScreen({Key? key}) : super(key: key);

  @override
  State<BurgerBuilderScreen> createState() => _BurgerBuilderScreenState();
}

class _BurgerBuilderScreenState extends State<BurgerBuilderScreen> {
  double _imageLayerOffset = 50.0;
  List<BurgerItem> lista = [];

  void addFill(BurgerItem item) {
    setState(() {
      lista.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onVerticalDragUpdate: (details) => setState(() {
                _imageLayerOffset = _imageLayerOffset + details.delta.dy;
                if (_imageLayerOffset < 25) {
                  _imageLayerOffset = 25;
                }
                if (_imageLayerOffset > 80) {
                  _imageLayerOffset = 80;
                }
              }),
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: BurgerController(_imageLayerOffset).showList(),
              ),
            ),
            FillDraggableSheet(onItemPress: addFill),
          ],
        ),
      ),
    );
  }
}
