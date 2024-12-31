import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String boldText;
  const BoldText({super.key, required this.boldText});

  @override
  Widget build(BuildContext context) {
    return Text(
      boldText,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }
}
