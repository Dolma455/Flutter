import 'package:flutter/material.dart';

void main() {
  runApp(ScrollviewApp());
}

class ScrollviewApp extends StatelessWidget {
  const ScrollviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ScrollView"),
        ),
        body: ViewApp() ,
      ),
    );
  }
}

class ViewApp extends StatelessWidget {
  const ViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverPadding(padding: const EdgeInsets.all(8),
      sliver: SliverGrid.extent(
        maxCrossAxisExtent: 500,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          Container(
            color: Colors.pink[200],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[100],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[300],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[100],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[200],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[400],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[500],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[250],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[400],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[400],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[500],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[250],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[400],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[400],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[500],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[250],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
            Container(
            color: Colors.pink[400],
            child: const Text("He'd have you all unravel at the nvnc"),
          ),
          
          

        ],
        ),
      ),

      
      
    ],);
  }
}