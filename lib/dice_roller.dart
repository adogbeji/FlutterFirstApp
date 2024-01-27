import 'dart:math';

import 'package:flutter/material.dart';

final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // final randomiser = Random();
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomiser.nextInt(6) + 1;  // 1 --> 6
      // activeDiceImage = 'assets/images/dice-$currentDiceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              // 'assets/images/dice-2.png',
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        );
  }
}