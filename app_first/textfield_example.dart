import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(TextApp());
}

class TextApp extends StatelessWidget {
  const TextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextfieldApp(),
    );
    
  }
}

class TextfieldApp extends StatelessWidget {
  const TextfieldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textfield'),centerTitle: true,

      ),
      body: const FormExample(),
    );

  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final TextEditingController emailController = TextEditingController();
final TextEditingController usernameController = TextEditingController();

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
     bool showPassword = false;
     bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Phone"),
            ),
            MouseRegion(
              onHover: (event) {
                setState(() {
                  isHovered = true;
                });
              },
              onExit: (event) {
                setState(() {
                  isHovered = false;
                });
               
              },
              child: TextFormField(
                controller: emailController,
                maxLength: 10,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly,],
                decoration:  InputDecoration(
                  hintText:isHovered?'Test hover': 'Enter your Phone',
counterText: "", 
                 filled: true,
                 
                 hoverColor: Colors.deepOrange,
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                 borderSide: BorderSide(width: 50,color: Colors.red),
                 ),
                 enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 0.4),),
                 contentPadding: EdgeInsets.all(12),
                ),
                
                validator: (String? value) {
                  if ( value!.length <10 ||value.length>10) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          
            TextFormField(
              controller: usernameController,
              obscureText: showPassword,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText:"Password",
              
                prefixIcon: Icon(Icons.password),
                suffixIcon: InkWell(onTap: () {
                  setState(() {
                  showPassword = !showPassword;
                    
                  });
                  // log(showPassword.toString());
                },
                  child: Icon(  showPassword?  Icons.visibility:Icons.visibility_off))
              ),
               validator: (String? value) {
                if ( value!.length<8) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
           
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(onPressed: () {
                if (_formKey.currentState!.validate()) {
                  debugPrint(emailController.text);
      
                }
              }, child: const Text('Submit'),)
            )
          ],
        ),
      ));
  }
}