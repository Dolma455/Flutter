import 'package:flutter/material.dart';

void main() {
  runApp(AppBarApp());
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const AppBarExample(),
    );
  }

}

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('AppBar Demo'),
        actions: <Widget>[

          TextButton(
            onPressed: () {},
             child: const Text('action1'),
             
             ),

             TextButton(onPressed: () {}, 
             child: const Text('action2'),
             ),

           IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is a snackbar')));
            },
           ),

           IconButton(
            icon: const Icon(Icons.navigate_next),
           tooltip:' Go to the next page',
           onPressed: () {
            Navigator.push(context, MaterialPageRoute<void> (
              builder: (BuildContext context) {
              return Scaffold(
                appBar:AppBar(
                  title: const Text('Next page'),
                ),
                body: const Center(
                  child: Text('This is my new page',
                  style: TextStyle(fontSize: 200,
                  ),
                  ),
                   ),
              );
            },));
           },)
        ],
      ),


    body: CustomCenter(),
    );
  }
}

class CustomCenter extends StatelessWidget {
  const CustomCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is the homepage',
      style: TextStyle(fontSize: 20),
      ),

    );
  }
}