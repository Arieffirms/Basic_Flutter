import 'dart:math';
import 'package:basic_flutter/models/product.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomePages extends StatelessWidget {
  HomePages({super.key});
  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(
      100,
      (index) {
        return Product(
          faker.food.restaurant(),
          "https://picsum.photos/id/$index/200",
          Random().nextInt(1000000),
          faker.lorem.sentence(),
        );
      },
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Model Belajar ",
          style: TextStyle(
            color: Colors.white,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 30,
            letterSpacing: 10,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            footer: Container(
              color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 2, left: 5),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      dummyData[index].judul,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: GoogleFonts.badScript().fontFamily,
                        fontSize: 15,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text("Rp.${dummyData[index].harga}"),
                  Text(
                    dummyData[index].description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.cyan,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            child: Image.network(dummyData[index].imageURL),
          );
        },
        itemCount: dummyData.length,
      ),
    );
  }
}
