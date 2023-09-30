import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() {
//   runApp(FormExampleApp());
// }


class FormExampleApp extends StatelessWidget {
  const FormExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),

        body: const FormExample(),
      )
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {

  final TextEditingController nameController= TextEditingController();
  final TextEditingController phoneController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final confirmPasswordController = TextEditingController();
   bool showPassword=false;
   bool isHovered=false;
   var formGap = SizedBox(height: 16,);

  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
      
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(padding: EdgeInsets.all(8)),
          Text('Name'), 
          Padding(padding: EdgeInsets.only(bottom: 8,top: 0)),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: 'Enter your name',
              filled: true,
              hoverColor: Colors.lightBlue,
              border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(15)), 
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1)),
              contentPadding: EdgeInsets.all(16),
            
            ),
            validator: (String? value) {
              if(value==null || value.isEmpty ){
                return 'Please enter your name';
              }
              return null;
            },

          ),
          Padding(padding: EdgeInsets.all(16)),
          Text('Email'),
          Padding(padding: EdgeInsets.only(top: 0,bottom: 8)),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter your email',

              filled: true,
              hoverColor: Colors.lightBlue,
              border: OutlineInputBorder(borderRadius:BorderRadius.all(
                Radius.circular(10))),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 1)),
               
            ),
              validator: (String? value) {
              if(value==null || value.isEmpty ){
                return 'Please enter your email';
              }
              return null;
            },
          ),

          Padding(padding: EdgeInsets.only(top: 16, bottom: 0)),
          Text("Phone"),
          Padding(padding: EdgeInsets.only(top: 8, bottom: 8)),
          TextFormField(
            controller: phoneController,
            maxLength: 10,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly,],
            decoration: InputDecoration(
              hintText: 'Enter your phone',
              counterText: "",
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 1)),
            ),

            validator: (String? value) {
              if(value!.length<10 || value.length>10) {
                return 'Phone number must be of 10 digits';

              }
              return null;
            },
          ),


          Padding(padding: EdgeInsets.only(top: 16, bottom: 0)),
          Text("Password"),
formGap,
          
          TextFormField(
            controller: passwordController,
            obscureText: showPassword,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              
              hintText: 'Enter your password',

              suffixIcon: InkWell(onTap: () {
                setState(() {
                  showPassword=!showPassword;
                });
              },
              child: Icon(showPassword?Icons.visibility:Icons.visibility_off),),
             
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 1)), 

            ),
            

            validator: (String? value) {
              if(value!.length<8 || value.isEmpty) {
                return 'Password must be at least ten characters';

              }
              return null;
            },
          ),
          formGap,
          Text("Confirm Password"),formGap,
           TextFormField(
            controller: confirmPasswordController,
            obscureText: showPassword,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              
              hintText: 'Enter your password',

              suffixIcon: InkWell(onTap: () {
                setState(() {
                  showPassword=!showPassword;
                });
              },
              child: Icon(showPassword?Icons.visibility:Icons.visibility_off),),
             
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 1)), 

            ),
            

            validator: (String? value) {
              if(passwordController.text !=confirmPasswordController.text) {
                return 'Confirm Password does not must match ';

              }
              return null;
            },
          ),
          
               
          Padding(padding: EdgeInsets.all(16)),
          ElevatedButton(onPressed: () {
            if(_formKey.currentState!.validate()) {

            }
          }, 
          child: const Text('Submit'),
          ),
        ],
      ),

    );
  }
}