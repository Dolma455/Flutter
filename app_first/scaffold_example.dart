import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaffoldExample(),
    );
  }
}

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {

  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Code"),
      ),

      body: 
      Center(
        child: Text("You have pressed the button $count times"),),
        floatingActionButton: FloatingActionButton(
          onPressed:() => setState(() => count++),
          tooltip: 'Increment Counter',
          child: const Icon(Icons.add),
        ),
          
          
        );

  }
}