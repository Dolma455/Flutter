import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImageApp(),
    );
  }
}

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Image"),
        title: Text("ME!"),
      ),

      body: 
      Center(
        child: Image(
          image: AssetImage('assets/door.jpg')),
      )
      


      
    );
  }
}