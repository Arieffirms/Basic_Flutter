import 'dart:math';

import 'package:flutter/material.dart';

class GridViews extends StatelessWidget {
  final List<Container> mylist = List.generate(20, (index) {
    return Container(
      // height: 50,
      // width: 150,
      color: Color.fromARGB(
        255,
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      ),
    );
  });

  GridViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //       childAspectRatio: 3 / 4),
      //   padding: EdgeInsets.all(10),
      //   children: mylist,
      // ),
      body: GridView.count(
        crossAxisCount: 3,
        children: mylist,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
