import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:get/get.dart';
import 'package:zeekademy/utils/ApiHandler.dart';
import 'package:zeekademy/userprofileScreen.dart';

Widget buildCard(int index) {
  return Card(
    elevation: 1.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image(
            image: AssetImage(
                "${userProfilePic[index]}"),
            height: 60,
            width: 60,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${userData[index]["name"]}"),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "@${userData[index]["username"]}",
                      style:
                      TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              print(userData[index]["id"]);
              Get.to(UserProfileScreen(),
                  arguments: userData[index]["id"],
                  transition: Transition.zoom);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Text(
              'View',
              style: TextStyle(color: Color(0xff7000FF)),
            ),
          ),
        ],
      ),
    ),
  );
}