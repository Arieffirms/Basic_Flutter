import 'package:flutter/material.dart';

class ColumnRows extends StatelessWidget {
  const ColumnRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Di bawah adaah row atau baris"),
          Container(
            width: 200,
            height: 20,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 20,
            color: Colors.red,
          ),
          Container(
            width: 50,
            height: 20,
            color: Colors.blue,
          ),
          Container(
            width: 250,
            height: 20,
            color: Colors.redAccent,
          ),

          // const SizedBox(
          //   height: 40,
          // ),

          // untuk pola dalam rows
          const Text("Di bawah adaah row atau baris"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 110,
                height: 110,
                color: Colors.amber,
              ),
              Container(
                width: 40,
                height: 20,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 20,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 20,
                color: Colors.black,
              ),
              Container(
                width: 50,
                height: 20,
                color: Colors.red,
              ),
              // SizedBox(
              //   height: 10,
              // ),
            ],
          ),
          Text("Di bawah adaah stack atau tumpukan"),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 75,
                height: 75,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 20,
                height: 20,
                color: Colors.amberAccent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
