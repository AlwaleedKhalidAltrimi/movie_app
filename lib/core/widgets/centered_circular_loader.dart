import 'package:flutter/material.dart';

class CenteredCircularLoader extends StatelessWidget {
  const CenteredCircularLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}
