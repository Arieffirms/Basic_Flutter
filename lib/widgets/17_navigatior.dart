import 'package:flutter/material.dart';

class NavigatorsLearn extends StatelessWidget {
  const NavigatorsLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageSatu(),
    );
  }
}

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return PageDua();
              },
            ),
          );
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.next_plan_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: const Center(
        child: Text(
          "PAGE 1",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        // leading: Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.backspace_rounded),
        backgroundColor: Colors.amber,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Text(
          "PAGE 2",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
