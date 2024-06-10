import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MediaQuerrys extends StatelessWidget {
  const MediaQuerrys({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuerryHeight = MediaQuery.of(context).size.height;
    final mediaQuerryWidth = MediaQuery.of(context).size.width;

    final myAppbar = AppBar(
      backgroundColor: Colors.blue,
      title: const Text(
        "Media Querrys",
        style: TextStyle(color: Colors.white),
      ),
    );

    final bodyHeight = mediaQuerryHeight -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: myAppbar,
        body: Center(
          child: (isLandscape)
              ? Column(
                  children: [
                    Container(
                      height: bodyHeight * 0.3,
                      width: mediaQuerryWidth,
                      color: Colors.amber,
                    ),
                    Container(
                      color: Colors.red,
                      height: bodyHeight * 0.7,
                      child: ListView.builder(
                        itemCount: 40,
                        itemBuilder: (context, index) {
                          return const ListTile(
                            leading: CircleAvatar(),
                            title: Text("Hello gais"),
                          );
                        },
                      ),
                    )
                  ],
                )
              : Column(
                  children: [
                    Container(
                      height: bodyHeight * 0.5,
                      width: mediaQuerryWidth,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      height: bodyHeight * 0.5,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),
                        itemCount: 40,
                        itemBuilder: (context, index) {
                          return GridTile(
                            child: Container(
                              color: Color.fromARGB(
                                  Random().nextInt(255),
                                  Random().nextInt(255),
                                  Random().nextInt(255),
                                  Random().nextInt(255)),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
