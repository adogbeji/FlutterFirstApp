import 'package:flutter/material.dart';

import './gradient_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 165, 47, 186),
              Color.fromARGB(255, 176, 94, 191),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const Center(
            child: GradientText(),
          ),
        );
  }
}