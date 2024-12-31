import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/constants/colors.dart';

class VerticalDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  final CrossAxisAlignment crossAxisAlignment;
  const VerticalDoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      this.crossAxisAlignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          bigText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        Text(
          smallText,
          style: const TextStyle(
              //fontWeight: FontWeight.bold,
              color: AppColor.blackAccent4,
              fontSize: 16),
        )
      ],
    );
  }
}
