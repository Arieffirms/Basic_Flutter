import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyPages extends StatelessWidget {
  const MyPages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        // brightness: Brightness.dark,
        // visualDensity: VisualDensity.comfortable,
        // visualDensity: VisualDensity(horizontal: 2, vertical: 1),
        // primarySwatch: Colors.amber,
        // primaryColor: Colors.amber,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.yellow,
          ),
        ),
        appBarTheme: const AppBarTheme(color: Colors.black),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.mediation,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Theme Data",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is a Text.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text("This is a Text.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.blue),
                minimumSize: const MaterialStatePropertyAll(
                  Size(130, 40),
                ),
                // padding: MaterialStateProperty.all(
                //   const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                // ),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6))),
              ),
              child: const Text(
                "Button",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
