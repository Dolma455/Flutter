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
          title: Text('Email Validation Example'),
        ),
        body: EmailValidationForm(),
      ),
    );
  }
}

class EmailValidationForm extends StatefulWidget {
  @override
  _EmailValidationFormState createState() => _EmailValidationFormState();
}

class _EmailValidationFormState extends State<EmailValidationForm> {
  final TextEditingController _emailController = TextEditingController();
  bool _isValidEmail = true;

  void _validateEmail(String email) {
    // Regular expression for a valid email pattern.
    final RegExp regex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

    setState(() {
      _isValidEmail = regex.hasMatch(email);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Enter Email',
              errorText: _isValidEmail ? null : 'Invalid Email',
            ),
            onChanged: _validateEmail,
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Perform some action when the form is submitted.
              // You can access the validated email using _emailController.text.
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
