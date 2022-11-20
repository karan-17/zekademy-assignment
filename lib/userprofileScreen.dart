import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/ApiHandler.dart';

class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int ind = Get.arguments;
    // String char=userData[ind - 1]['phone'].toString().trimLeft().substring(0,14);
    // print(char);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: ElevatedButton.icon(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black, size: 20),
            label: const Text('Icon'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0.5,
            ),
          ),
          title: Text(
            userData[ind - 1]['name'],
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
        ),
        // body: Center(child:Text('hello ${userData[ind-1]['name']}')),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(userProfilePic[ind - 1]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userData[ind - 1]['name'],
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "@${userData[ind - 1]['username']}",
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Text(
                          'Email: ',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        Text(userData[ind - 1]['email']),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Address: ',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          width: Get.width*0.8,
                          child: Text('${userData[ind - 1]['address']['street']}, '
                              '${userData[ind - 1]['address']['suite']}, '
                              '${userData[ind - 1]['address']['city']}, '
                              '${userData[ind - 1]['address']['zipcode']}',
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Text(
                          'Phone: ',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        userData[ind - 1]['phone'].toString().contains('x')?
                        Text('${userData[ind - 1]['phone']}'
                            .trimLeft()
                            .substring(
                                0,
                                userData[ind - 1]['phone']
                                    .toString()
                                    .indexOf(' '))):
                        Text('${userData[ind - 1]['phone']}'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Text(
                          'Website: ',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        Text(userData[ind - 1]['website']),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
