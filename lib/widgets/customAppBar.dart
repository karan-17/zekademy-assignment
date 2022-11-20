import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

AppBar customAppBar() {
  return AppBar(
    // leading: ElevatedButton.icon(onPressed: (){}, icon: ImageIcon(AssetImage("assets/LOGO.png")), label: Text('Icon'),),
    title: Row(
        children:const [
          Image(image: AssetImage("assets/Logo.png"), height: 50, width: 80,),
          Spacer(),
          Icon(IconlyLight.notification, color: Colors.black),
          SizedBox(width: 20),
          Icon(IconlyLight.search, color: Colors.black),
        ]),
    backgroundColor: Colors.white,
    elevation: 0.5,

  );
}