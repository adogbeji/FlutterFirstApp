import 'package:flutter/material.dart';

import './dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColour, this.endColour, {super.key});

  final Color startColour;
  final Color endColour;

  // var activeDiceImage = 'assets/images/dice-2.png';

  // void rollDice() {
  //   activeDiceImage = 'assets/images/dice-4.png';
  //   print('Working!');
  // }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Color.fromARGB(255, 165, 47, 186),
            // Color.fromARGB(255, 176, 94, 191),
            startColour,
            endColour,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        // child: StyledText('Hello World'),
        child: DiceRoller(),
      ),
    );
  }
}
