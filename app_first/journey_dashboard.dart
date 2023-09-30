import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loyalage/app_first/textfield_example.dart';


void  main() {
  runApp(JApp());
 
}

class JApp extends StatelessWidget {
  const JApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      fontFamily: "Poppins",tabBarTheme: TabBarTheme(labelStyle: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w600),)
     ,
     ),
      home: JourneyApp(),
    );
    
  }
}
class JourneyApp extends StatefulWidget {
  const JourneyApp({super.key});

  @override
  State<JourneyApp> createState() => _JourneyAppState();
}

class _JourneyAppState extends State<JourneyApp> {
   var iconGap = SizedBox(height: 18,width: 16,);
   var gap=SizedBox(height: 22,width: 22,);
    final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
     final TextEditingController messageController=TextEditingController();
     final TextEditingController titleController = TextEditingController();

        final TextEditingController portFieldController = TextEditingController();
    final TextEditingController emailFieldController = TextEditingController();
     final TextEditingController sFieldController = TextEditingController();
     final journeyController=TextEditingController();
  
   
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if(kDebugMode){

    log(size.width.toString());
    log("h "+size.height.toString());
    }
 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0065F2).withOpacity(0.04),
        foregroundColor:  Color(0xff0065F2).withOpacity(0.04),
        shadowColor:  Color(0xff0065F2).withOpacity(0.04),
     
        actions: [
          CircleAvatar(child: Icon(Icons.person_outlined,size: 30,color: Colors.black,),
          backgroundColor: Color(0xff0065F2).withOpacity(0.20),
          ),
          Padding(padding: EdgeInsets.only(left: 16, right: 16)),

          CircleAvatar(child: Icon(Icons.notifications_active_outlined , size: 30, color: Colors.black,),
          backgroundColor: Color(0xff0065F2).withOpacity(0.20),),
          Padding(padding: EdgeInsets.only(left: 16, right: 16)),
        ],
      ),

      body: 
      
         Form(
          key: _formKey,
           child: Row(
            children: [
               
               Expanded(
                flex:size.width >=700 ?2:3,
                child: Container(
                  alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(horizontal: 6,vertical: 22
                ),
                  color: Color(0xff0065F2).withOpacity(0.04),
                 height:size.height,
                  // width: size.width*0.15,
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                        child: Icon(Icons.dashboard_outlined,color: Color(0xff6D7066),)),
                      iconGap,
                      Expanded(flex: 5,
                        child: Text("Dashboard", style: TextStyle(
                          color: Color(0xff6D7066),
                          
                          
                        ),),
                      ),
                 
                    ],
                  ),       
                ),
              ),
              Expanded(flex: 8,
                child: DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(16),
                              margin:EdgeInsets.all(22),
                              color: Color(0xff0065F2).withOpacity(0.04),
                              height: 200,
                            
                           width: 500,
                              // width: size.width<=600?  size.wisdth*0.75
                              
                              // :size.width<=900?size.width*.77:
                              // size.width>=1500?size.width*0.82:
                              // size.width*0.8,
                              
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  TextFormField(
                                    controller: journeyController,
                                    decoration: InputDecoration(
                                      hintText: "Journey Name",
                                     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                    ),
                                  ),
                       ]   
                              )
                           
                             ),
                            
                         ),
                         Container(
                          color: Colors.amber[100],
                         )
                        ]
                      )
                      ]
                      )
                      )
                      )
                      ])));
                                                                           

  }
}
