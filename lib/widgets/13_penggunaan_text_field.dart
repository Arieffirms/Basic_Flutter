import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextfieldPengguna extends StatefulWidget {
  TextfieldPengguna({super.key});

  @override
  State<TextfieldPengguna> createState() => _TextfieldPenggunaState();
}

class _TextfieldPenggunaState extends State<TextfieldPengguna> {
  final TextEditingController mycontroller =
      TextEditingController(text: "initials");

  String hasil = "hasil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: mycontroller,
                onChanged: (value) {
                  // print("Onchanged");
                },
                onSubmitted: (value) {
                  // print(value);
                  setState(() {
                    hasil = value;
                  });
                },
                onEditingComplete: () {
                  Text(mycontroller.text);
                },
              ),
              Text(hasil)
            ],
          ),
        ),
      ),
    );
  }
}
