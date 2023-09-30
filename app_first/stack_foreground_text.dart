import 'package:flutter/material.dart';

void main() {
  runApp(TextApp());
}

class TextApp extends StatelessWidget {
  const TextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
          actions: [
            Stack(
              children:
               [ 
                
                Icon(Icons.circle,size: 60,
               ),
               
               Align(
                alignment: AlignmentDirectional.bottomEnd,
                 child: Icon(Icons.circle,size: 20,color: Colors.green[400],
                 ),
               ),
            
               ],
            )
          ],
        ),
        body: StackText(),
      ),
    );
  }
}

class StackText extends StatelessWidget {
  const StackText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Stack(
        children: [
          Container(
            
            color: Colors.yellow[100],
          ),

          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withAlpha(0),
                Colors.black12,
                Colors.black45,
              ]
              )
            ),
            child: const Text('Foreground Color',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
            ),),
          ),
        ],
      ),
    );
  }
}