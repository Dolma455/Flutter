import 'package:flutter/material.dart';

final List<int> _items= List<int>.generate(10, (int index)=>index);

void main() {
  runApp(AppBarApp ());
  
}
class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 186, 172, 226),
        useMaterial3: true,
      ),
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

  bool shadowColor = false;
    double? scrolledUnderElevation;
  @override
  Widget build(BuildContext context) {

    final ColorScheme colorScheme=Theme.of(context).colorScheme;
    final Color oddItemColor= colorScheme.primary.withOpacity(0.10);
    final Color evenItemColor= colorScheme.primary.withOpacity(0.30);

    
    return Scaffold(
      appBar: AppBar(
        title: const Text('My AppBar'),
        scrolledUnderElevation: scrolledUnderElevation,
        shadowColor: shadowColor ? Theme.of(context).colorScheme.shadow: null,
        
      ),

      body: GridView.builder(
        itemCount: _items.length,
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            if (index==0) {
              return Center(
                child: Text('Scroll to see the effects',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
                ),
                );
            }

            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              
              color: _items[index].isOdd ? oddItemColor: evenItemColor,
              ),
              child: Text('Item $index'),
            );
          },
      ),

      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8) ,
          child: OverflowBar(
            alignment: MainAxisAlignment.center,
            overflowSpacing: 5.0,
            children:<Widget>[
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    shadowColor = !shadowColor;
                  });
                },
                icon: Icon(
                  shadowColor ? Icons.visibility_off : Icons.visibility,
                ),
                label: const Text('shadow color'),
                ),
                 const SizedBox(width: 5),
              ElevatedButton(
                onPressed: () {
                  if (scrolledUnderElevation == null) {
                    setState(() {
                      // Default elevation is 3.0, increment by 1.0.
                      scrolledUnderElevation = 4.0;
                    });
                  } else {
                    setState(() {
                      scrolledUnderElevation = scrolledUnderElevation! + 1.0;
                    });
                  }
                },
                child: Text(
                  'scrolledUnderElevation: ${scrolledUnderElevation ?? 'default'}',
                ),
              ),

            ],))
      ),
      

    );
  }
}