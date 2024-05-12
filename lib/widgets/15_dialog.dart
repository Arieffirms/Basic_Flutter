import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  @override
  State<Dialogs> createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 49),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          // print("telah di buka");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                title: const Text("confrim"),
                content: const Text("yakin mau hapus item ini? "),
                actions: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          data = "false";
                          Navigator.of(context).pop(false);
                        });
                      },
                      child: const Text(
                        "no",
                        style: TextStyle(color: Colors.blue),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          data = "TRUE";
                        });
                        Navigator.of(context).pop(true);
                      },
                      child: const Icon(Icons.add_task_sharp))
                ],
              );
            },
            // ignore: avoid_print
          ).then((value) => print(value));
        },
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
