import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/search/hotel_search.dart';
import 'package:ticket_booking_app/screens/search/ticket_search.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 27, 125, 12);
  static const Color blackColor = Color.fromARGB(0, 29, 29, 31);
  static const Color blackAccent1 = Color.fromARGB(255, 29, 29, 30);
  static const Color blackAccent2 = Color.fromARGB(255, 61, 60, 63);
  static const Color blackAccent3 = Color.fromARGB(255, 140, 138, 147);
  static const Color blackAccent4 = Color.fromARGB(255, 215, 214, 214);
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int selectedIndex = 0; // Tracks which button is active

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'What are you looking for?',
          style: TextStyle(fontSize: 18, color: AppColors.blackAccent4),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 5),
          // Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Airline Tickets Button
                SizedBox(
                  width: 150, // Fixed width for button
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 0; // Set active index to 0
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: selectedIndex == 0
                          ? AppColors.primaryColor
                          : AppColors.blackAccent2, // Active/Inactive color
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                    ),
                    child: Text(
                      'Airline Tickets',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Hotels Button
                SizedBox(
                  width: 150, // Fixed width for button
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1; // Set active index to 1
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: selectedIndex == 1
                          ? AppColors.primaryColor
                          : AppColors.blackAccent2, // Active/Inactive color
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Hotels',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Display content based on active button
          Expanded(
            child: Center(
                child: selectedIndex == 0
                    ? const FlightSearchForm()
                    : const HotelSearchForm()),
          ),
        ],
      ),
    );
  }
}
