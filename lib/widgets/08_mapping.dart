import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MappingsLearn extends StatelessWidget {
  const MappingsLearn({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> mylist = [
      {
        "name": "Arif firmansyah",
        "age": 20,
        "favColor": ["black", "white", "yellow"]
      },
      {
        "name": "Aisyah",
        "age": 18,
        "favColor": ["green", "black", "grey"]
      },
      {
        "name": "Malik",
        "age": 23,
        "favColor": [
          "green",
          "black",
          "aple",
          "green",
          "black",
          "aple",
          "green",
          "black",
          "aple"
        ]
      },
      {
        "name": "Malik",
        "age": 23,
        "favColor": [
          "green",
          "black",
          "aple",
          "green",
          "black",
          "aple",
          "green",
          "black",
          "aple"
        ]
      }
    ];
    return Scaffold(
      body: ListView(
        children: mylist.map((data) {
          List myfavColor = data["favColor"];
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.black38,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("name: ${data['name']}"),
                          Text("age: ${data['age']}"),
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myfavColor.map((warna) {
                        return Container(
                          color: Colors.amber,
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                          padding: EdgeInsets.all(5),
                          child: Text(warna),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
