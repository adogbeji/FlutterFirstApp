import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

const startColour = Color.fromARGB(255, 165, 47, 186);
const endColour = Color.fromARGB(255, 176, 94, 191);

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(startColour, endColour),
      ),
    ),
  );
}