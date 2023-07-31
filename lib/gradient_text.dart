import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText({super.key});
  
  @override
  Widget build(context) {
    return const Text(
      'Hello World!',
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
    );
  }
}
