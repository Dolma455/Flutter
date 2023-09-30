import 'package:flutter/material.dart';

void main() {
  runApp(ImageApp());
}

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: ImageExample(),
      ),
    );
  }
}


class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network('https://picsum.photos/250?image=9',
    errorBuilder: (context, error, stackTrace) {
      return Image.asset('assets/door.jpg');
    },);
  }
}