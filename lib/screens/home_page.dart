import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/constants/colors.dart';
import 'package:ticket_booking_app/core/constants/image_name.dart';
import 'package:ticket_booking_app/core/utils/all_ticket_info.dart';
import 'package:ticket_booking_app/core/utils/hotel_info.dart';
import 'package:ticket_booking_app/core/widgets/double_text.dart';
import 'package:ticket_booking_app/core/widgets/ticket_view.dart';
import 'package:intl/intl.dart';
import 'package:ticket_booking_app/screens/widgets/hotel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Add Drawer Here
      drawer: Drawer(
        backgroundColor:Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: AppColor.blackAccent1,
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage(ImageName.sishu),
              ),
              accountName: const Text(
                "James bond",
                style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.blackAccent4),
              ),
              accountEmail: const Text(
                "jamesBond@gmail.com",
                style: TextStyle(color: AppColor.blackAccent4),
              ),
            ),
            // Drawer Menu Items
            ListTile(
              
              leading: const Icon(Icons.person, color: AppColor.primaryColor),
              title: const Text(
                "My Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.flight, color: AppColor.primaryColor),
              title: const Text(
                "My Trips",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail_outline, color: AppColor.primaryColor),
              title: const Text(
                "Inbox",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.share, color: AppColor.primaryColor),
              title: const Text(
                "Share App",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.public, color: AppColor.primaryColor),
              title: const Text(
                "World Map",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: AppColor.primaryColor),
              title: const Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            const Divider(color: AppColor.blackAccent3),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                "Log Out",
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),

      // Body remains unchanged
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: AppColor.blackAccent3,
                        size: 40,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer(); // Open the drawer programmatically
                      },
                    ),
                    const Icon(
                      Icons.airline_stops_outlined,
                      color: AppColor.blackAccent3,
                      size: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Hello! James',
                  style: TextStyle(color: AppColor.primaryColor, fontSize: 18),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'Where are you going?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                const TextField(
                  decoration: InputDecoration(
                    fillColor: AppColor.blackAccent1,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.mic_none_outlined,
                      color: AppColor.blackAccent3,
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: AppColor.primaryColor,
                    ),
                    hintText: 'Search',
                    hintStyle:
                        TextStyle(color: AppColor.blackAccent3, fontSize: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            DoubleText(
              bigText: 'Upcoming Flights',
              smallText: 'View All',
              onTap: () => Navigator.pushNamed(
                context,
                "/all_tickets",
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  var ticket = ticketList[index];
                  DateTime parsedTime = DateTime.parse(
                    ticketList[index]['departure']['time'],
                  );
                  String formattedTime =
                      DateFormat('MMM d, h a').format(parsedTime);

                  return TicketView(
                    fCode: ticket['departure']['airport'],
                    tCode: ticket['arrival']['airport'],
                    fName: ticket['departure']['city'],
                    tName: ticket['arrival']['city'],
                    airline: ticket['airline']['name'],
                    price: ticket['price'],
                    duration: ticket['duration'],
                    flightNUmber: ticket['flight_number'],
                    dateAndTime: formattedTime,
                  );
                },
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 12, right: 12),
              child: DoubleText(
                bigText: 'Hotels',
                smallText: 'View all',
                onTap: () => Navigator.pushNamed(
                  context,
                  "/all_hotels",
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 390,
              width: 210,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    var hotel = hotelData[index];

                    return Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Hotel(
                          hotelAddress: hotel['location'],
                          hotelName: hotel['name'],
                          hotelRating: hotel['rating'].toString(),
                          hotelImage: hotel['imageUrl']),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}