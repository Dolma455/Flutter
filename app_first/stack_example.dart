import 'package:flutter/material.dart';

void main() {
  runApp(StackExample());
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
          
        ),
        body: StackApp() ,
      ),
    );
  }
}

class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue[100],
        ),
        Container(
          height: 150,
          width: 150,
          color: Colors.blue[300],
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.blue[50],
        ),
        Container(
          height: 90,
          width: 90,
          color: Colors.blue[500],
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.blue[30],
        ),

        Positioned(
          right: 0,
          left: 1,
          child: Container(
            height: 20,
            width: 20,
            color: Colors.blue[10],
          ),
        ),
        

      ],
    );
  }
}