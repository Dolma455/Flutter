import 'package:flutter/material.dart';

void main() {
  runApp(BuildApp());
}

class BuildApp extends StatelessWidget {
  const BuildApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridAppExample(),
      ),
    );
  }
}


class GridAppExample extends StatelessWidget {
   GridAppExample({super.key});

  final List<Map> Products =List.generate(200, (index) => {"id":index,"name":"Product ${index}"}).toList();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      childAspectRatio: 3/2,),
      itemCount: Products.length,
       itemBuilder: (BuildContext ctx ,index) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.amber[100],
            borderRadius: BorderRadius.circular(10),
            
          ),
          child: Text(Products[index]["name"]),

        );
       }) ;
  }
}