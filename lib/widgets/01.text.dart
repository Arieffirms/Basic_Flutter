import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class TextPasge extends StatelessWidget {
  const TextPasge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Ini Adalah Text",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.pink,
            // backgroundColor: Colors.black,
            fontSize: 49,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            fontFamily: GoogleFonts.badScript().fontFamily,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dotted,
          ),
        ),
      ),
    );
  }
}
