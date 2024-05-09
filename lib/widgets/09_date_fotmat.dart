import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormat1 extends StatelessWidget {
  const DateFormat1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          DateFormat.EEEE().add_jms().format(DateTime.now()),
        ),
      ),
    );
  }
}
