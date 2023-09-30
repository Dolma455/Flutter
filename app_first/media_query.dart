import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MediaQueryApp());
}

class MediaQueryApp extends StatelessWidget {
  const MediaQueryApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("MediaQueryExample"),
        ),
        body: Center(
          child: Text(
            'Screen Width: ${screenSize.width.toStringAsFixed(2)}\n'
            'Screen Height: ${screenSize.height.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 20),
            
          ),
        ),
      ),
    );
  }
}