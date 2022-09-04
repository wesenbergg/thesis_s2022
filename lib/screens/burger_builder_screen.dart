import 'package:flutter/material.dart';
import 'package:thesis_s2022/components/fill_draggable_sheet.dart';
import 'package:thesis_s2022/constants/style_constants.dart';
import 'package:thesis_s2022/controllers/burger_controller.dart';
import 'package:thesis_s2022/utils.dart';

class BurgerBuilderScreen extends StatefulWidget {
  const BurgerBuilderScreen({Key? key}) : super(key: key);

  @override
  State<BurgerBuilderScreen> createState() => _BurgerBuilderScreenState();
}

class _BurgerBuilderScreenState extends State<BurgerBuilderScreen> {
  double _imageLayerOffset = initImageOffset;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: sA0,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: primary,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: transparent,
        actions: const [Menu()],
        leading: IconButton(
          icon: closeIcon,
          color: bodyColor,
          iconSize: titleSize,
          onPressed: () {},
        ),
        title: appTitle,
      ),
      body: SafeArea(
        child: Padding(
          padding: sT2,
          child: Stack(
            children: [
              GestureDetector(
                onVerticalDragUpdate: (details) => setState(() {
                  _imageLayerOffset = forkValue(
                    _imageLayerOffset + details.delta.dy,
                    minImageOffset,
                    maxImageOffset,
                  );
                }),
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    ...BurgerController(_imageLayerOffset).showList(context),
                  ],
                ),
              ),
              const FillDraggableSheet(),
            ],
          ),
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: menuIcon,
      color: bodyColor,
      iconSize: titleSize,
      onPressed: () => Scaffold.of(context).openEndDrawer(),
    );
  }
}
