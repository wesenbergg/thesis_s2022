import 'package:flutter/material.dart';
import 'package:thesis_s2022/enums/vegetables.dart';

class FillDraggableSheet extends StatelessWidget {
  final Function onItemPress;

  const FillDraggableSheet({
    Key? key,
    required this.onItemPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.1,
      maxChildSize: 0.5,
      snapSizes: const [0.1, 0.5],
      snap: true,
      builder: (BuildContext context, scrollSheetController) {
        return Container(
            color: Colors.white,
            child: VegetableCardList(
                onItemPress: onItemPress, controller: scrollSheetController));
      },
    );
  }
}

class VegetableCardList extends StatelessWidget {
  const VegetableCardList({
    Key? key,
    required this.onItemPress,
    required this.controller,
  }) : super(key: key);

  final Function onItemPress;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      padding: EdgeInsets.zero,
      controller: controller,
      physics: const ClampingScrollPhysics(),
      itemCount: Vegetables.values.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          child: GridTile(
            // onTap: () => onItemPress(Vegetables.values[index].item),
            header: Text(
              Vegetables.values[index].item.label.toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            footer: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => print, icon: const Icon(Icons.remove)),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("0"),
                ),
                IconButton(
                  onPressed: () => print,
                  icon: const Icon(Icons.add),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: CircleAvatar(
                maxRadius: 100,
                backgroundColor: Colors.amber,
                child: Image.asset(Vegetables.values[index].item.uri),
              ),
            ),
          ),
        );
      },
    );
  }
}
