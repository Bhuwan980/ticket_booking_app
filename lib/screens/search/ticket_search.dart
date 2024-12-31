import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryColor = Color.fromARGB(255, 27, 125, 12);
  static const Color blackColor = Color.fromARGB(255, 29, 29, 31);
  static const Color blackAccent4 = Color.fromARGB(255, 215, 214, 214);
}

class FlightSearchForm extends StatefulWidget {
  const FlightSearchForm({super.key});

  @override
  State<FlightSearchForm> createState() => _FlightSearchFormState();
}

class _FlightSearchFormState extends State<FlightSearchForm> {
  String? fromCity;
  String? toCity;
  DateTime? travelDate;
  int passengers = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Dismiss keyboard/cursor when tapping outside the TextField
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Plan your next trip",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Search flights and book your tickets",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            // "From" Field
            _buildTextField(
              label: "From",
              hintText: "City",
              icon: Icons.flight_takeoff,
              onChanged: (value) => setState(() {
                fromCity = value;
              }),
            ),
            const SizedBox(height: 15),
            // "To" Field
            _buildTextField(
              label: "To",
              hintText: "City",
              icon: Icons.flight_land,
              onChanged: (value) => setState(() {
                toCity = value;
              }),
            ),
            const SizedBox(height: 15),
            // "Date" Field
            _buildDateField(
              label: "Date",
              icon: Icons.calendar_today,
              selectedDate: travelDate,
              onDateSelected: (date) {
                setState(() {
                  travelDate = date;
                });
              },
            ),
            const SizedBox(height: 15),
            // "Passengers" Field
            _buildTextField(
              label: "Passengers",
              hintText: "Number",
              icon: Icons.person,
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() {
                passengers = int.tryParse(value) ?? 1;
              }),
            ),
            const SizedBox(height: 20),
            // Search Button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  backgroundColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                onPressed: () {
                  print("From: $fromCity");
                  print("To: $toCity");
                  print("Date: $travelDate");
                  print("Passengers: $passengers");
                },
                child: const Text(
                  "Search Flights",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable TextField builder
  Widget _buildTextField({
    required String label,
    required String hintText,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
    required Function(String) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColor.blackAccent4, // Use blackAccent4
          ),
        ),
        // const SizedBox(height: 8),
        TextField(
          keyboardType: keyboardType,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon:
                Icon(icon, color: AppColor.primaryColor), // Primary color
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: AppColor.blackColor, // Black background
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: AppColor.primaryColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: AppColor.primaryColor),
            ),
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  // Reusable Date Picker Field
  Widget _buildDateField({
    required String label,
    required IconData icon,
    required DateTime? selectedDate,
    required Function(DateTime) onDateSelected,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColor.blackAccent4, // Use blackAccent4
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2100),
            );
            if (pickedDate != null) {
              onDateSelected(pickedDate);
            }
          },
          decoration: InputDecoration(
            prefixIcon:
                Icon(icon, color: AppColor.primaryColor), // Primary color
            hintText: selectedDate == null
                ? "Select date"
                : "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: AppColor.blackColor, // Black background
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: AppColor.primaryColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: AppColor.primaryColor),
            ),
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
