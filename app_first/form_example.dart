import 'package:flutter/material.dart';

void main() {
  runApp(SignupApp());
}

class SignupApp extends StatelessWidget {
  const SignupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextfieldApp(),
    );
  }
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Form"),
      ),
    );
  }
}


class TextfieldApp extends StatefulWidget {
  const TextfieldApp({super.key});

  @override
  State<TextfieldApp> createState() => _TextfieldAppState();
}

class _TextfieldAppState extends State<TextfieldApp> {

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(padding: const EdgeInsets.all(8),
      child: Column(
        children: [
         
         Padding(padding: const EdgeInsets.all(8),
         
         ),
         
             
        ],
      ),
      ));
      
  }
}