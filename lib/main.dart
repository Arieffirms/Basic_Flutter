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
import 'package:basic_flutter/widgets/10_tabbar.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

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
    return TabBars();
  }
}
