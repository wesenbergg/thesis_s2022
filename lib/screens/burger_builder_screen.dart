import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  void addFill(BurgerItem item, [int count = 1]) {
    setState(() {
      lista.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
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
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        actions: const [Menu()],
        leading: IconButton(
          icon: const Icon(Icons.close),
          color: Colors.brown[900],
          iconSize: 32,
          onPressed: () {},
        ),
        title: Text(
          'Magic Burger ✨',
          style: GoogleFonts.chicle(
            textStyle: const TextStyle(
              color: Color.fromRGBO(93, 64, 55, 1),
              fontSize: 32,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
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
                  children:
                      BurgerController(_imageLayerOffset).showList(context),
                ),
              ),
              FillDraggableSheet(onItemPress: addFill),
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
      icon: const Icon(Icons.menu),
      color: Colors.brown[900],
      iconSize: 32,
      onPressed: () => Scaffold.of(context).openEndDrawer(),
    );
  }
}
