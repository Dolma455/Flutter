import 'package:flutter/material.dart';

void main() {

  runApp(EmailPopup());
}

class EmailPopup extends StatelessWidget {
  const EmailPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
      EmailSettingPopup(),
    );
  }
}

class EmailSettingPopup extends StatelessWidget {
   final TextEditingController portFieldController = TextEditingController();
    final TextEditingController emailFieldController = TextEditingController();
     final TextEditingController sFieldController = TextEditingController();
      var gap=SizedBox(height: 22,width: 22,);
   EmailSettingPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () =>showDialog<String> (
        context: context,
      builder: (BuildContext context) =>
       AlertDialog(
        title: const Text('Setting'),
        
        content:
         Container(
          width: 300,
          height: 250,
           child: Column(
            children: [
              Row(
                children:[
              Text('App_Port'),
              gap,
              
                  ConstrainedBox(
         
                                    constraints: BoxConstraints(maxWidth: 120),
                                    child: TextFormField(
                                      controller: portFieldController,
                   
                                      decoration: InputDecoration(
                                        hintText: "3000",
                                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                      
                                      ),
                      
                                      ),
                      
                            
                                  ),
                ],
              ),
              gap,
         
               Row(
                children:[
              Text('Email'),
              gap,
              
                  ConstrainedBox(
         
                                    constraints: BoxConstraints(maxWidth: 120),
                                    child: TextFormField(
                                      controller: emailFieldController,
                   
                                      decoration: InputDecoration(
                                        hintText: "abc@gmail.com",
                                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                      
                                      ),
                      
                                      ),
                                  ),
                ],
              ),
              gap,
               Row(
                children:[
              Text('Secret'),
              gap,
              
                  ConstrainedBox(
         
                                    constraints: BoxConstraints(maxWidth: 120),
                                    child: TextFormField(
                                      controller: sFieldController,
                   
                                      decoration: InputDecoration(
                                        hintText: "vjnjvk",
                                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                      
                                      ),
                      
                                      ),
                      
                            
                                  ),
                ],
              ),
            ],
                 ),
         ),
        actions: [
          TextButton(onPressed: () =>Navigator.pop(context,'Cancel'),
           child: const Text('Cancel'),
           ),

           TextButton(onPressed: ()=>Navigator.pop(context,'Ok'),
            child: const Text('Save')),

        ],
      )
      
      ),
      child: const Icon(Icons.settings),
 );
  }
}
