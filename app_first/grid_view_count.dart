import 'package:flutter/material.dart';

void main() {
  runApp(GridApp());
}

class GridApp extends StatelessWidget {
  const GridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridViewApp() ,
      ),
    );
  }
}

class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
    children: [
      Container(
        padding: EdgeInsets.all(16),
        color: Colors.yellow[100],
        child: const Text("Students are reading books"),
      ),

      Container(
        padding: EdgeInsets.all(16),
        color: Colors.yellow[300],
        child: const Text("Anni is from Pokhara"),
      ),
        Container(
        padding: EdgeInsets.all(16),
        color: Colors.yellow[200],
        child: const Text("Students are reading books"),
      ),

      Container(
        padding: EdgeInsets.all(16),
        color: Colors.yellow[50],
        child: const Text("Anni is from Pokhara"),
      ),

       Container(
        padding: EdgeInsets.all(16),
        color: Colors.yellow[100],
        child: const Text("Students are reading books"),
      ),

      Container(
        padding: EdgeInsets.all(16),
        color: Colors.yellow[300],
        child: const Text("Anni is from Pokhara"),
      ),
        Container(
        padding: EdgeInsets.all(16),
        color: Colors.yellow[200],
        child: const Text("Students are reading books"),
      ),

      Container(
        padding: EdgeInsets.all(16),
        color: Colors.yellow[50],
        child: const Text("Anni is from Pokhara"),
      ),


      
    ],);
  }
}