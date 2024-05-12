import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            autocorrect: true,
            autofocus: false,
            enableSuggestions: true,
            enableInteractiveSelection: false,
            // enabled: false,
            // obscureText: true,
            // obscuringCharacter: '#',
            keyboardType: TextInputType.phone,
            readOnly: true,
          ),
        ),
      ),
    );
  }
}
