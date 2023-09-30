import 'package:flutter/material.dart';

void main() {
  runApp(ListApp());
}

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListViewExample(),
      ),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.all(8),
      children: [
        Container(
       
          height: 50,
          color: Colors.orange[600],
          child:const Center(child: Text("Child A")),
        ),

        Container(
          height: 50,
          color: Colors.orange[300],
          child: const Center(child: Text("Child B"),)
      
        )   ,
        Container(
          height: 50,
          color: Colors.orange[100],
          child: const Center(
            child: Text("Child C"),
          ),
        )
      ],
    );
  }
}