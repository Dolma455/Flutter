import 'package:flutter/material.dart';

void main() {
  runApp(ListViewBuilder());
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Builder"),
        ),
        body: BuilderApp(),

      ),
    );
  }
}

class BuilderApp extends StatelessWidget {
   BuilderApp({super.key});

  final List<String> entries=<String>['A','B','C','D','E'];
  final List<int> colorCodes=<int>[600,400,100,50,10];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index ) {

        return Container(
          height: 600,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}'),),
          
        );

    },
    );
  }
}