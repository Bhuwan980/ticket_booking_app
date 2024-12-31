import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:ticket_booking_app/core/utils/all_ticket_info.dart';
import 'package:ticket_booking_app/core/widgets/ticket_view.dart';
import 'package:ticket_booking_app/screens/search/ticket_search.dart';

class TicketBookingPage extends StatelessWidget {
  const TicketBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          backgroundColor: Colors.black,
          title: const Text(
            'All Trips',
            style: TextStyle(color: AppColor.blackAccent4),
          ),
        ),
        body: ListView.builder(
            itemCount: ticketList.length,
            itemBuilder: (context, index) {
              var ticket = ticketList[index];
              DateTime parsedTime = DateTime.parse(
                ticketList[index]['departure']['time'],
              );
              // Format the DateTime object to the desired format
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
            }));
  }
}
