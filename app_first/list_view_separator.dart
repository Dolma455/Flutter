import 'package:flutter/material.dart';

void main() {
  runApp(SeparatorApp());
}

class SeparatorApp extends StatelessWidget {
  const SeparatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListViewSeparator"),
        ),

        body:ViewExample() ,
      ),
    );
  }
}

class ViewExample extends StatelessWidget {
  ViewExample({super.key});

  final List<String> childs=<String>['a','b','c','d','e','f','g','h','i','j'];
  final List<int> colorCodes=<int>[200,300,200,300,400,500,100,50,30,500]; 

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder:(BuildContext context, index) {
        return Container(
          height: 120
          ,
          color: Colors.green[colorCodes[index]],
          child: Center(child: Text("Entry ${childs[index]}"),),
        );
        
      },
       separatorBuilder: (BuildContext context,index) =>
       const Divider(),
       itemCount: colorCodes.length);
  }
}