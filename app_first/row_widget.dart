import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppExample(),
    );
    
  }
}

class AppExample extends StatelessWidget {
  const AppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Row"),
      ),

      body:
      Column(
        children: [
          const Row(
            children: [
              Text('Row1, Item1'),
              Text('Row2, Item2'),
            ],
          ),

          const Row(
            children: [
              Expanded(child: Text('Deliver features faster', textAlign: TextAlign.center,),
              ),
              Expanded(child: Text('Craft beautiful UIs', textAlign: TextAlign.center,),
              ),
              Expanded(child: FittedBox(
                child: FlutterLogo(),
              ))
          
        ],
      ),

      const Row(
        children: [
          Text('Row3, Item3'),
          Text('Row3, Item2'),
        ],
      ),

      const Row(
        textDirection: TextDirection.rtl,
        children: [
          FlutterLogo(),
          Expanded(child: Text("Flutter helps you quickly build an app"),
          ),
          Icon(Icons.sentiment_satisfied_alt_outlined),
        ],
      )

        ],
      )
     
      
    );
  }
}