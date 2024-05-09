import 'package:flutter/material.dart';

class Learnstf extends StatefulWidget {
  const Learnstf({super.key});

  @override
  State<Learnstf> createState() => _LearnstfState();
}

class _LearnstfState extends State<Learnstf> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            counter.toString(),
            style: TextStyle(fontSize: 20 + double.parse(counter.toString())),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (counter != 1) {
                    setState(() {
                      counter--;
                    });
                  }
                },
                child: const Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
