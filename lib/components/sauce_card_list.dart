import 'package:flutter/material.dart';
import 'package:thesis_s2022/enums/sauces.dart';
import 'package:thesis_s2022/states/burger_state.dart';
import 'package:provider/provider.dart';

class SauceCardList extends StatelessWidget {
  const SauceCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        itemCount: Sauces.values.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.zero,
            elevation: 0,
            child: GridTile(
              header: Text(
                Sauces.values[index].item.label.toUpperCase(),
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              footer: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () => context
                          .read<BurgerState>()
                          .addSauce(Sauces.values[index]),
                      icon: const Icon(Icons.remove)),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("0"),
                  ),
                  IconButton(
                    onPressed: () => context
                        .read<BurgerState>()
                        .addSauce(Sauces.values[index]),
                    icon: const Icon(Icons.add),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: CircleAvatar(
                  maxRadius: 100,
                  backgroundColor: Colors.amber,
                  child: Image.asset(Sauces.values[index].item.uri),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
