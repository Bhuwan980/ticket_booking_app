import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryColor = Color.fromARGB(255, 27, 125, 12);
  static const Color blackColor = Color.fromARGB(255, 29, 29, 31);
  static const Color blackAccent4 = Color.fromARGB(255, 215, 214, 214);
}

class HotelSearchForm extends StatefulWidget {
  const HotelSearchForm({super.key});

  @override
  State<HotelSearchForm> createState() => _HotelSearchFormState();
}

class _HotelSearchFormState extends State<HotelSearchForm> {
  String? location;
  DateTime? checkInDate;
  DateTime? checkOutDate;
  int guests = 1;

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
              "Find the perfect stay",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Search hotels and book your stay",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            // "Location" Field
            _buildTextField(
              label: "Location",
              hintText: "City or Hotel",
              icon: Icons.location_on,
              onChanged: (value) => setState(() {
                location = value;
              }),
            ),
            const SizedBox(height: 15),
            // "Check-in Date" Field
            _buildDateField(
              label: "Check-in Date",
              icon: Icons.calendar_today,
              selectedDate: checkInDate,
              onDateSelected: (date) {
                setState(() {
                  checkInDate = date;
                });
              },
            ),
            const SizedBox(height: 15),
            // "Check-out Date" Field
            _buildDateField(
              label: "Check-out Date",
              icon: Icons.calendar_today,
              selectedDate: checkOutDate,
              onDateSelected: (date) {
                setState(() {
                  checkOutDate = date;
                });
              },
            ),
            const SizedBox(height: 15),
            // "Guests" Field
            _buildTextField(
              label: "Guests",
              hintText: "Number",
              icon: Icons.person,
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() {
                guests = int.tryParse(value) ?? 1;
              }),
            ),
            const SizedBox(height: 20),
            // Search Button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  backgroundColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                onPressed: () {
                  print("Location: $location");
                  print("Check-in Date: $checkInDate");
                  print("Check-out Date: $checkOutDate");
                  print("Guests: $guests");
                },
                child: const Text(
                  "Search Hotels",
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
