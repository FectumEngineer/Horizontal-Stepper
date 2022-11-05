library horizontal_stepper;

import 'package:flutter/cupertino.dart';

class HorizontalStepper extends StatelessWidget {
  final totalStep;
  final completedStep;
  final selectedColor;
  final backGroundColor;
  const HorizontalStepper(
      {Key? key,
      this.totalStep = 4,
      required this.selectedColor,
      required this.backGroundColor,
      this.completedStep = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index;
    return SizedBox(
      height: 6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // use whichever suits your need
          children: [
            for (index = 0; index < totalStep; index++)
              Container(
                  width: MediaQuery.of(context).size.width * .88 / totalStep,
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    color: (index < completedStep)
                        ? selectedColor
                        : backGroundColor,
                  )),
          ],
        ),
      ),
    );
  }
}
