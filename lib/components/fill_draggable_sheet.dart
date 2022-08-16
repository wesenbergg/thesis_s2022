import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:thesis_s2022/components/bun_card_list.dart';
import 'package:thesis_s2022/components/sauce_card_list.dart';
import 'package:thesis_s2022/components/vegetable_card_list.dart';

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
                const [
                  BunCardList(),
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
