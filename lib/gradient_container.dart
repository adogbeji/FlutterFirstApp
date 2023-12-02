import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColour, this.endColour, {super.key});

  final Color startColour;
  final Color endColour;

  void rollDice() {}

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
      child: Center(
        // child: StyledText('Hello World'),
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              child: const Text('Roll Dice')
            ),
          ],
        ),
      ),
    );
  }
}
