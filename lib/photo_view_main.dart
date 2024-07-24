import 'package:flutter/material.dart';
import 'package:flutter_lecture/photo_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {

  List<String> imagesPaths = [
    "https://cdn.pixabay.com/photo/2023/10/26/04/52/old-8341706_640.jpg",
    "https://cdn.pixabay.com/photo/2017/06/14/07/05/siberian-2401287_640.jpg",
    "https://cdn.pixabay.com/photo/2024/05/31/09/37/living-room-8800183_640.jpg",
    "https://cdn.pixabay.com/photo/2024/06/26/14/02/moon-8855057_640.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PhotoViewPage(
                  imagePaths: imagesPaths,
                  currentIndex: 0,
                ),
              ),
            );
          },
          child: Text('Open PhotoView Gallery'),
        ),
      ),
    );
  }
}
