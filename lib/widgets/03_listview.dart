import 'package:flutter/material.dart';

class ListViewLearn extends StatelessWidget {
  const ListViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<Color> colors = [
    //   Colors.amber,
    //   Colors.red,
    //   Colors.green,
    //   Colors.blue,
    //   Colors.black,
    // ];

    // List<Widget> mylist = [
    //   Container(
    //     width: 300,
    //     height: 300,
    //     color: Colors.amber,
    //   ),
    //   Container(
    //     width: 300,
    //     height: 300,
    //     color: Colors.red,
    //   ),
    //   Container(
    //     width: 300,
    //     height: 300,
    //     color: Colors.green,
    //   ),
    //   Container(
    //     width: 300,
    //     height: 300,
    //     color: Colors.amber,
    //   ),
    // ];

    final List<Widget> mylist = List.generate(
      100,
      (index) => Text(
        "${index + 1}",
        style: TextStyle(
          fontSize: 20 +
              double.parse(
                index.toString(),
              ),
        ),
      ),
    );

    return Scaffold(
      body: ListView(
        children: mylist,
      ),
    );
  }
}
