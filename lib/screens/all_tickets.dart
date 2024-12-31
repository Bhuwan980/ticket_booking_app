import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ticket_booking_app/core/constants/colors.dart';
import 'package:ticket_booking_app/core/utils/all_ticket_info.dart';
import 'package:ticket_booking_app/core/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        iconTheme: const IconThemeData(color: AppColor.blackAccent4),
        // shadowColor: AppColor.blackAccent2,
        title: const Text(
          'All Tickets',
          selectionColor: AppColor.blackAccent1,
          style: TextStyle(color: AppColor.blackAccent4),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        // margin: const EdgeInsets.only(bottom: 4),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: ticketList.length,
          itemBuilder: (context, index) {
            var ticket = ticketList[index];
            DateTime parsedTime = DateTime.parse(
              ticketList[index]['departure']['time'],
            );
            // Format the DateTime object to the desired format
            String formattedTime = DateFormat('MMM d, h a').format(parsedTime);
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
    );
  }
}
