import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container with TabBar'),
        ),
        body: ContainerWithTabBar(),
      ),
    );
  }
}

class ContainerWithTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Title for Your Container',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        DefaultTabController(
          length: 3, // Number of tabs
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(text: 'Tab 1',),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                ],
              ),
              Container(
                height: 200.0, // Adjust the height as needed
                child: TabBarView(
                  children: [
                    Center(child: Text('Tab 1 Content')),
                    Center(child: Text('Tab 2 Content')),
                    Center(child: Text('Tab 3 Content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
