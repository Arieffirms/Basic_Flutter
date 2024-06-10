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
// import 'package:basic_flutter/widgets/10_tabbar.dart';
// import 'package:basic_flutter/widgets/11_text_field.dart';
// import 'package:basic_flutter/widgets/12_dekorasi_text_field.dart';
// import 'package:basic_flutter/widgets/13_penggunaan_text_field.dart';
// import 'package:basic_flutter/widgets/14_grid_view.dart';
// import 'package:basic_flutter/widgets/15_dialog.dart';
// import 'package:basic_flutter/widgets/16_dismissible.dart';
// import 'package:basic_flutter/16_router.dart';
// import 'package:basic_flutter/widgets/17_navigatior.dart';
// import 'package:basic_flutter/widgets/18_router.dart';
// import 'package:basic_flutter/widgets/19_drawer.dart';
// import 'package:basic_flutter/widgets/20_switch.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:basic_flutter/pages/home_page.dart';
// import 'package:basic_flutter/widgets/21_theme.dart';
import 'package:basic_flutter/widgets/23.media_querry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    // DeviceOrientation.portraitDown,
    // DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MediaQuerrys(),
    );
  }
}
