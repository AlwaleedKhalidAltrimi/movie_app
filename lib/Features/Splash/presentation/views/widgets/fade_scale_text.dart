import 'package:flutter/material.dart';

class FadeScaleText extends StatelessWidget {
  const FadeScaleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Movie App',
      style: TextStyle(
        color: Colors.white,
        fontSize: 34,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
