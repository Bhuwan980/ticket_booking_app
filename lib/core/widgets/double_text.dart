import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/constants/colors.dart';
import 'package:ticket_booking_app/screens/all_tickets.dart';

class DoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  final VoidCallback? onTap;

  const DoubleText(
      {super.key, required this.bigText, required this.smallText, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          bigText,
          style: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            smallText,
            style: const TextStyle(
                fontSize: 16,
                color: AppColor.blackAccent3,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
