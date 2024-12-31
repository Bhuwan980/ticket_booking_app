import 'package:flutter/material.dart';
import 'package:ticket_booking_app/core/constants/colors.dart';
import 'package:ticket_booking_app/core/constants/image_name.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        elevation: 0,
        leading: TextButton(
          onPressed: () {},
          child: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColor.blackAccent4,
              )),
        ),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              color: AppColor.blackAccent3, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: AppColor.blackAccent3),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              // Profile Header Section
              Container(
                color: AppColor.blackColor,
                child: const Column(
                  children: [
                    SizedBox(height: 20),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(ImageName.sishu),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "James Bond",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Gold Member",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    SizedBox(height: 6),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // Account Information Section
              Container(
                decoration: BoxDecoration(
                  color: AppColor.blackAccent2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  children: [
                    ListTile(
                      title: Text(
                        "ACCOUNT INFORMATION",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColor.blackAccent4,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Member Nº",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                      trailing: Text(
                        "477 833 9222 922",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Miles collected",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                      trailing: Text(
                        "14'934",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Member Class",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                      trailing: Text(
                        "Gold",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Membership Card",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: AppColor.blackAccent4,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              // Personal Details Section
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.blackAccent2,
                ),
                child: const Column(
                  children: [
                    ListTile(
                      title: Text(
                        "PERSONAL DETAILS",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColor.blackAccent4,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Personal information",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: AppColor.blackAccent4,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Passport details",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: AppColor.blackAccent4,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Payment methods",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: AppColor.blackAccent4,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Flight preferences",
                        style: TextStyle(color: AppColor.blackAccent4),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: AppColor.blackAccent4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
