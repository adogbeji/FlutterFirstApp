import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(String text, {super.key});
  
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
