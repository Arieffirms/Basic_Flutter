// import 'package:basic_flutter/widgets/01.text.dart';
// import 'package:basic_flutter/widgets/02_invisible.dart';
// import 'package:basic_flutter/widgets/03_listview.dart';
// import 'package:basic_flutter/widgets/04_list_tile.dart';
// import 'package:basic_flutter/widgets/06_extrack_widget.dart';
// import 'package:basic_flutter/widgets/testiq.dart';
// import 'package:basic_flutter/widgets/07_statfull.dart';
// import 'package:basic_flutter/widgets/08_mapping.dart';
// import 'package:basic_flutter/widgets/09_date_fotmat.dart';
// import 'package:basic_flutter/widgets/testiq.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  MyApp({super.key});

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
                fontFamily: GoogleFonts.badScript().fontFamily,
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
