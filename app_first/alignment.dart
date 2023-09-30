import 'package:flutter/material.dart';

void main() {
  runApp(AlignApp());
}

class AlignApp extends StatelessWidget {
  const AlignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
  appBar: AppBar(title: Text('Alignment'),),
),
    );
  }
}