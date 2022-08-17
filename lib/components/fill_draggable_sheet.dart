import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:thesis_s2022/constants/style_constants.dart';

class FillDraggableSheet extends StatefulWidget {
  const FillDraggableSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<FillDraggableSheet> createState() => _FillDraggableSheetState();
}

class _FillDraggableSheetState extends State<FillDraggableSheet> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: maxChildSize,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      snapSizes: draggableSnapSizes,
      snap: true,
      builder: (BuildContext context, scrollSheetController) {
        return Container(
          color: background,
          child: ListView.builder(
            itemCount: 2,
            controller: scrollSheetController,
            itemBuilder: (BuildContext context, int index) {
              return [
                Container(
                  color: primary,
                  child: Column(
                    children: [
                      draggableDivider,
                      IconStepper(
                        activeStep: activeStep,
                        // This ensures step-tapping updates the activeStep.
                        onStepReached: (index) {
                          setState(() {
                            activeStep = index;
                          });
                        },
                        activeStepColor: stepperActiveColor,
                        activeStepBorderColor: stepperActiveBorderColor,
                        activeStepBorderPadding: 0,
                        enableNextPreviousButtons: false,
                        lineColor: stepperLineColor,
                        scrollingDisabled: true,
                        stepReachedAnimationDuration:
                            stepReachAnimationDuration,
                        stepReachedAnimationEffect: Curves.bounceIn,
                        icons: stepperIcons,
                      ),
                    ],
                  ),
                ),
                draggableSheetSteps[activeStep],
              ][index];
            },
          ),
        );
      },
    );
  }
}
