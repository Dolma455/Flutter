import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyIconsApp(),
    );
  }
}

class MyIconsApp extends StatelessWidget {
  const MyIconsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icons Classes"),
        actions: [
          Text("action1"),
          Padding(padding: EdgeInsets.all(20)),
         Text('action2'),
        ],
      ),

      body:
      const Column(
        children: [
          const Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
                size:30,

              ),

              Icon( 
                Icons.audiotrack,
                color:Colors.green,
                size: 30,
              ),
            ],
          ),

          const Row(
            children: [
              Text("Hello from Dolma"),
            ],
          )
        ],
      )
    );
  }
}