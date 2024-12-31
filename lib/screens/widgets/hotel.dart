import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/constants/colors.dart';
import 'package:ticket_booking_app/core/constants/image_name.dart';
import 'package:ticket_booking_app/core/widgets/bold_text.dart';

class Hotel extends StatelessWidget {
  final String hotelName;
  final String hotelAddress;
  final String hotelRating;
  final String hotelImage;

  const Hotel({
    super.key,
    required this.hotelName,
    required this.hotelAddress,
    required this.hotelRating,
    required this.hotelImage,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(9),
          width: 200,
          height: 270,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: AppColor.blackAccent2,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      hotelImage,
                      height: 185,
                      width: 185,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText(boldText: hotelName),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.pin_drop_outlined,
                                color: AppColor.blackAccent4,
                              ),
                              Text(hotelAddress),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                hotelRating,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
