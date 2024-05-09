import 'package:flutter/material.dart';

class BelajarImages extends StatelessWidget {
  const BelajarImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 350,
          color: Colors.amber,
          child: Image.network(
            "https://picsum.photos/200/300",
            // fit: BoxFit.cover,
          ),
          // child: const Image(
          //   fit: BoxFit.cover,
          //   image: AssetImage("images/image.jpg"),
          //   //     const Image(image: NetworkImage("https://picsum.photos/200/300")),
          // ),
        ),
      ),
    );
  }
}
