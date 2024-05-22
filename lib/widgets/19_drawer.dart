import 'package:basic_flutter/widgets/18_router/setting_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawerLearn(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DrawerLearn extends StatelessWidget {
  const DrawerLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("HOME PAGE"),
        // leading: Icon(Icons.back_hand),
      ),
      body: const Center(
        child: Text("SOME TEXT HERE!"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 120,
              alignment: Alignment.bottomLeft,
              color: Colors.blue,
              child: Text(
                "Menu Bar",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.home,
                size: 40,
              ),
              title: Text(
                "HOME",
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },
              leading: Icon(
                Icons.settings,
                size: 40,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
