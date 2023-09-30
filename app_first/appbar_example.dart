import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("front"),
        title: Text("My AppBar"),centerTitle: true,
        actions: [
          Text("action1"),Padding(padding: EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),),
          Padding(padding: EdgeInsets.all(8)),
          Text("action2"),
          Icon(Icons.abc)

        ],
        
      ),
      
      body: 
      Container(
        color: const Color.fromARGB(255, 189, 161, 161),
        child: SingleChildScrollView(

      
  child: Column(
    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    
              children: [
            Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
              Container(
              child: Text("Dolma"),
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text("World"),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
          ],
        ),
        ),
        
      )
    );
  }
}