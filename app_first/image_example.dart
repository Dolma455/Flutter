import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image from Assets'),
        ),
        body: Center(
          child: Image.asset(
            'assets/ass1js.png',  // Replace with the actual relative path to your image asset
            width: 200,          // Set the width of the image
            height: 200,         // Set the height of the image
            fit: BoxFit.contain, // Choose how the image should fit within the container
          ),
        ),
      ),
    );
  }
}
