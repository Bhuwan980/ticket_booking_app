import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/buttom_nav_bar.dart';
import 'package:ticket_booking_app/screens/all_hotels.dart';
import 'package:ticket_booking_app/screens/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          surface: const Color.fromARGB(0, 29, 29, 31),
          seedColor: const Color.fromARGB(0, 217, 223, 217),
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white), // Default for body text
          bodyMedium:
              TextStyle(color: Colors.white), // Default for medium body text
          bodySmall:
              TextStyle(color: Colors.white), // Default for small body text
          headlineSmall: TextStyle(color: Colors.white), // Headline styles
          headlineMedium: TextStyle(color: Colors.white),
          headlineLarge: TextStyle(color: Colors.white),
        ),
      ),
      home: const ButtomNavBar(),
      routes: {
        "/all_tickets": (context) => const AllTickets(),
        "/all_hotels": (context) => const AllHotels(),
      },
    );
  }
}
