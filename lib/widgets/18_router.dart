import 'package:basic_flutter/widgets/18_router/gallery_page.dart';
import 'package:basic_flutter/widgets/18_router/home_page.dart';
import 'package:basic_flutter/widgets/18_router/photos_page.dart';
import 'package:flutter/material.dart';

class RoutersLearn extends StatelessWidget {
  const RoutersLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: HomePage.namedPage,
      routes: {
        HomePage.namedPage: (context) => const HomePage(),
        GalleryPage.namedPage: (context) => const GalleryPage(),
        PhotosPage.namedPage: (context) => const PhotosPage(),
      },
    );
  }
}
