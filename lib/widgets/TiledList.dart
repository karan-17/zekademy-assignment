import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeekademy/utils/ApiHandler.dart';
import 'package:zeekademy/widgets/cardtile.dart';

class TileList extends StatelessWidget {
  const TileList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: userData == null ? 0 : userData.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
            child: buildCard(index),
          );
        });
  }
}