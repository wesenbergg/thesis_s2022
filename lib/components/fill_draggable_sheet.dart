import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:provider/provider.dart';
import 'package:thesis_s2022/components/vegetable_card_list.dart';
import 'package:thesis_s2022/enums/sauces.dart';
import 'package:thesis_s2022/states/burger_state.dart';

class FillDraggableSheet extends StatefulWidget {
  final Function onItemPress;

  const FillDraggableSheet({
    Key? key,
    required this.onItemPress,
  }) : super(key: key);

  @override
  State<FillDraggableSheet> createState() => _FillDraggableSheetState();
}

class _FillDraggableSheetState extends State<FillDraggableSheet> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.115,
      maxChildSize: 0.5,
      snapSizes: const [0.115, 0.5],
      snap: true,
      builder: (BuildContext context, scrollSheetController) {
        return Container(
          color: Colors.white,
          child: ListView.builder(
            itemCount: 2,
            controller: scrollSheetController,
            itemBuilder: (BuildContext context, int index) {
              return [
                Container(
                  color: Colors.amber,
                  child: Column(
                    children: [
                      const SizedBox(
                        width: 80,
                        height: 20,
                        child: Divider(
                          thickness: 5,
                        ),
                      ),
                      IconStepper(
                        activeStep: activeStep,
                        // This ensures step-tapping updates the activeStep.
                        onStepReached: (index) {
                          setState(() {
                            activeStep = index;
                          });
                        },
                        activeStepColor: Colors.amber[100],
                        activeStepBorderColor:
                            Color.fromARGB(125, 255, 241, 45),
                        activeStepBorderWidth: 1,
                        activeStepBorderPadding: 2,
                        enableNextPreviousButtons: false,
                        lineColor: Colors.black45,
                        scrollingDisabled: true,
                        stepReachedAnimationDuration:
                            const Duration(seconds: 1, milliseconds: 500),
                        stepReachedAnimationEffect: Curves.bounceIn,
                        icons: const [
                          Icon(Icons.lunch_dining_outlined),
                          Icon(Icons.lunch_dining),
                          Icon(Icons.fastfood),
                        ],
                      ),
                    ],
                  ),
                ),
                [
                  SauceCardList(),
                  VegetableCardList(),
                  SauceCardList()
                ][activeStep],
              ][index];
            },
          ),
        );
      },
    );
  }
}

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
