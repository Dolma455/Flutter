import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loyalage/app_first/textfield_example.dart';

import '../widget/my_form_field.dart';

class MobilePushDashboard extends StatefulWidget {
  const MobilePushDashboard({super.key});

  @override
  State<MobilePushDashboard> createState() => _MobilePushDashboardState();
}

class _MobilePushDashboardState extends State<MobilePushDashboard> {
   var iconGap = SizedBox(height: 18,width: 16,);
   var gap=SizedBox(height: 22,width: 22,);
    final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
     final TextEditingController messageController=TextEditingController();
     final TextEditingController titleController = TextEditingController();

        final TextEditingController portFieldController = TextEditingController();
    final TextEditingController emailFieldController = TextEditingController();
     final TextEditingController sFieldController = TextEditingController();
  
   
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
                              // width: size.width<=600?  size.width*0.75
                              
                              // :size.width<=900?size.width*.77:
                              // size.width>=1500?size.width*0.82:
                              // size.width*0.8,
                              
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Campaigns", style: TextStyle(
                                    fontSize: 22,
                                  
             
                                    //nfontWeight:FontWeight.w600,
                                  ),
                                  ),
                                  
                      
                                  Column(
                                   children: [
                                     TabBar(
                      
                                     
                                labelColor: Colors.blue,
                                 // Set the selected tab text color to blue
                  unselectedLabelColor: Color(0xff6D7066),
                  isScrollable: true,
          
                                       tabs:[
                                       Tab(text: 'Email'),
                                       Tab(text: 'SMS',),
                                       Tab(text:'Web Push',),
                                       Tab(text: 'Mobile Push',),
                                     ],
                                     ),
                                   ],
                                  ),
                                ],              
                              ),
                        
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height*0.5,
                      child: TabBarView(children: [
                        Center(child: Text("Email"))
                        ,Center(child: Text("SMS")),
                        Center(child: Text("Web")), 
                        
                        Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.only(left: 22,right: 22,top: 0,bottom: 22),
                      color: Color(0xff0065F2).withOpacity(0.04),
                      height: size.height*0.50,
                      // width:size.width<=600?  size.width*0.77:
                      // size.width<=900?size.width*.78:
                      // size.width>=1500?size.width*0.82:
                      // size.width*0.8,
                      
                            
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       
                         
                        children: [
                          Row(
                         
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                            children:[

                            
                        Text('Title',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          
                        ),
                        ),

                        TextButton(
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
              SizedBox(width: 80,
                child: Text('App_Port'),),
              gap,
              
                  ConstrainedBox(
         
                                    constraints: BoxConstraints(maxWidth: 160),
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
              SizedBox(
                width: 80,
                child: Text('Email')),
              gap,
              
                  ConstrainedBox(
         
                                    constraints: BoxConstraints(maxWidth: 160),
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

              SizedBox(width: 80,
                child: Text('Secret')),
              gap,
              
                  ConstrainedBox(
         
                                    constraints: BoxConstraints(maxWidth: 160),
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
      child: const Icon(Icons.settings,color: Colors.black,),

 ),
  
                        //Icon(Icons.settings_outlined),
                            ],
                          ),
                        
                         gap,
                         ConstrainedBox(

                                  constraints: BoxConstraints(maxWidth: 200),
                                  child: TextFormField(
                                    controller: titleController,
                 
                                    decoration: InputDecoration(
                                      hintText: "title",
                                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                      
         
         
                                    ),
                                     validator: (String? value) {
                                  if (value==null || value.isEmpty) {
                                  return 'Please write title';
                                  }
                                  return null;
                                  },
                                    ),
                    
                          
                                ),





                                 gap,
                                Text("Compose Push Message", style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),),
                                
                            
                            
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: [


                          gap,
                         ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 500,
                          ),
                          child: TextFormField(
                                  
                           controller: messageController,
                           maxLines:size.height<700?2: 4,
                           decoration: InputDecoration(
                             hintText: 'type message',
                             
                            
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(5))
                             ),
                           ),
         
                                  validator: (String? value) {
                                  if (value==null || value.isEmpty) {
                                  return 'Please write something';
                                  }
                                  return null;
                                  },
                                  ),
                                  
                                ),        
                                
                              ],
                            
                            ),
                            ElevatedButton(onPressed: () {
         
                               if(_formKey.currentState!.validate()) {
                          
                              final snackbar=SnackBar(
                                content:  Text("${titleController.text}\n ${messageController.text}",),
                              action: SnackBarAction(label: '',
                               onPressed: () {
           
                               }
                               ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackbar);
                               }
                            
                            }, style: ElevatedButton.styleFrom(
                              //minimumSize: Size(80, 40),
                            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 18),
                    
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                             child: Text("Send")),
                          ],
                        ),   
                               
                        ],
                      )
                            
                            
                    )
                    ],
                    ),
                    ),
                          
                   
                           
                  ],
                            ),
                ),
            )
                 ],
               
           ),
         ));
  }
}

