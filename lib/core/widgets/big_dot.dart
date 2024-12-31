import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/constants/colors.dart';

class BigDot extends StatefulWidget {
  const BigDot({super.key});

  @override
  State<BigDot> createState() => _BigDotState();
}

class _BigDotState extends State<BigDot> {
  @override
  Widget build(BuildContext context) {
    // // return Column(
    // //   children: [
    // //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    return Container(
      padding: EdgeInsets.all(4.5),
      // Added height for the dot to be circular
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: AppColor.blackAccent4),
        color: AppColor.blackAccent2, // Set color for the dot
        borderRadius: BorderRadius.circular(100), // Corrected borderRadius
      ),
    );
  }
}
//             const Text(
//               ' --------- ',
//               style: TextStyle(color: AppColor.blackAccent3),
//             ),
//             Container(
//               padding: EdgeInsets.all(3),
//               // Added height for the dot to be circular
//               decoration: BoxDecoration(
//                 color: AppColor.blackAccent3,
//                 border: Border.all(width: 2.5, color: AppColor.blackAccent3), // Set color for the dot
//                 borderRadius:

//                     BorderRadius.circular(100), // Corrected borderRadius
//               ),
//             ),
//           ],
//         ),
//         const Icon(
//           Icons.book,
//           color: AppColor.blackAccent3,
//         )
//       ],
//     );
//   }
// }
