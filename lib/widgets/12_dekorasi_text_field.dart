import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DecoratiomTextFields extends StatelessWidget {
  const DecoratiomTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            showCursor: true,
            cursorWidth: 3,
            obscureText: true,
            // cursorColor: Colors.black,
            // cursorWidth: 4,
            // cursorHeight: ,
            // cursorRadius: Radius.circular(19),
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            textCapitalization: TextCapitalization.none,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              icon: Icon(
                Icons.person,
                size: 35,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                // gapPadding: BorderSide.strokeAlignOutside,
              ),
              contentPadding: EdgeInsets.all(15),
              // prefixText: "Name:", // prefix: Icon(
              //   Icons.person,
              //   size: 35,
              // ),
              suffixIcon: Icon(
                Icons.photo,
                color: Colors.blue,
              ),
              hintText: "Plese input your name",
              hintStyle: TextStyle(fontSize: 17),
              labelText: "full name",
            ),
          ),
        ),
      ),
    );
  }
}
