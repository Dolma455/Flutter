import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstRoute'),
      ),
      body: 
      Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context,
           MaterialPageRoute(builder: (context)=> const SecondRoute()),);

        }, child: Text("Next")),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondRoute"),
      ),
      body: 
      Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context);

        }, child: Text("Back")),
      )
    );
  }
}