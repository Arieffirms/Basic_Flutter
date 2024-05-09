import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBars extends StatelessWidget {
  final List<Tab> myTab = [
    const Tab(
      icon: Icon(Icons.add_a_photo),
    ),
    const Tab(
      icon: Icon(Icons.ac_unit),
    ),
    const Tab(
      icon: Icon(Icons.accessibility_new),
    ),
  ];
  TabBars({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 2,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            // leadingWidth: 100, untuk mengatur kiri appbars
            // titleSpacing: 599,
            leading: const Icon(Icons.android, color: Colors.amber),
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: Text(
              "Basic dart 1s",
              style: TextStyle(
                fontFamily: GoogleFonts.aBeeZee().fontFamily,
                color: Colors.white,
                // letterSpacing: 1,
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              automaticIndicatorColorAdjustment: false,
              indicatorWeight: 3,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              // indicator: BoxDecoration(
              //     border: Border(
              //   bottom: BorderSide(
              //     color: Colors.black,
              //     width: 5,
              //   ),
              // )),
              // isScrollable: true,
              // indicatorPadding: EdgeInsets.all(10),
              // indicator: BoxDecoration(color: Colors.amber),
              tabs: myTab,
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text("tab 1"),
              ),
              Center(
                child: Text("tab 2"),
              ),
              Center(
                child: Text("tab 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
