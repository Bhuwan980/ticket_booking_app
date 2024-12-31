import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/constants/colors.dart';
import 'package:ticket_booking_app/core/widgets/app_layout_builder_dots.dart';
import 'package:ticket_booking_app/core/widgets/big_dot.dart';
import 'package:ticket_booking_app/core/widgets/bold_text.dart';

class TicketView extends StatelessWidget {
  final String fCode;
  final String tCode;
  final String dateAndTime;
  final String fName;
  final String tName;
  final String duration;
  final String airline;
  final double price;
  final String flightNUmber;

  const TicketView(
      {super.key,
      required this.fCode,
      required this.tCode,
      required this.dateAndTime,
      required this.fName,
      required this.tName,
      required this.duration,
      required this.airline,
      required this.price,
      required this.flightNUmber});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.90,
      height: 240,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
            margin: const EdgeInsets.only(right: 12, left: 12),
            decoration: const BoxDecoration(
              color: AppColor.blackAccent2,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    BoldText(boldText: fCode),
                    Expanded(
                      child: Container(),
                    ),
                    const BigDot(),
                    Expanded(
                      child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderDots(),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: AppColor.blackAccent4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const BigDot(),
                    Expanded(
                      child: Container(),
                    ),
                    BoldText(boldText: tCode)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                      child: Text(
                        fName,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: AppColor.blackAccent4,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      child: Text(
                        duration,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: AppColor.blackAccent4,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    SizedBox(
                      width: 90,
                      child: Text(
                        tName,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                          color: AppColor.blackAccent4,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'DATE & TIME',
                      style:
                          TextStyle(color: AppColor.blackAccent4, fontSize: 14),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    const Text(
                      'FLIGHT NUMBER',
                      style:
                          TextStyle(color: AppColor.blackAccent4, fontSize: 14),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      dateAndTime,
                      style: const TextStyle(fontSize: 12),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(flightNUmber, style: const TextStyle(fontSize: 12))
                  ],
                ),
              ],
            ),
          ),
          // middle half circle cut out part
          Container(
            margin: const EdgeInsets.only(right: 12, left: 12),
            height: 15,
            width: screenWidth * 0.9,
            decoration: const BoxDecoration(
              color: AppColor.blackAccent2,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 18,
                  width: 9,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                // for dots between lower and upper part
                Expanded(
                  child: AppLayoutBuilderDots(),
                ),
                SizedBox(
                  height: 18,
                  width: 9,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // bottom half part of the ticket
          Container(
            padding:
                const EdgeInsets.only(left: 18, right: 18, bottom: 10, top: 9),
            margin: const EdgeInsets.only(right: 12, left: 12),
            decoration: const BoxDecoration(
              color: AppColor.blackAccent2,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      color: AppColor.blackAccent4,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    BoldText(boldText: airline)
                  ],
                ),
                BoldText(
                  boldText: "\$$price",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
