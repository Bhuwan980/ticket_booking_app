import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/constants/colors.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'All Hotels',
        ),
        titleTextStyle:
            const TextStyle(color: AppColor.blackAccent4, fontSize: 20),
        iconTheme: const IconThemeData(color: AppColor.blackAccent4),
      ),
      body: const Center(
        child: Text('all hotels page'),
      ),
    );
  }
}
