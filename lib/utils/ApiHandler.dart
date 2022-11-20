import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import '../widgets/TiledList.dart';

  List userData=[];
  Future getData() async{
    http.Response response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    // debugPrint(response.body);
    userData = json.decode(response.body);
    // debugPrint(userData.toString());
    return userData;
  }

  List userProfilePic = [
    'assets/leanne.png',
    'assets/ervin.png',
    'assets/bauch.png',
    'assets/patricia.png',
    'assets/chelsey.png',
    'assets/leanne.png',
    'assets/ervin.png',
    'assets/bauch.png',
    'assets/patricia.png',
    'assets/chelsey.png',
  ];

const List screenChildren = [
  Center(child: Text('Home Page')),
  TileList(),
  Center(child: Text('Create Page')),
  Center(child: Text('Activities Page')),
  Center(child: Text('Profile Page')),
];
