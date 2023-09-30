import 'package:flutter/material.dart';
import 'package:loyalage/app_first/app_bar_example.dart';

List<String> titles=<String>[
  'Cloud',
  'Rainy',
  'Sunny',
];

void main() {
  runApp(const AppBarApp());
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: const AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 3;
    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text("SecondApp"),
        ),

        body:

        Container(color: Colors.white,
        child: const Column(
          children: [
            Text("Hello"),
            Text("World"),
            Text("I am Doilma"),
         Text("Hello world"),

            Expanded(
              child: FittedBox(
                child: FlutterLogo(),
               ) ,),

          ]),

        

          ),

      ),
    );
  }
}